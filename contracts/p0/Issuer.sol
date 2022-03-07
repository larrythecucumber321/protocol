pragma solidity 0.8.9;
// SPDX-License-Identifier: BlueOak-1.0.0

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "contracts/libraries/Fixed.sol";
import "contracts/interfaces/IMain.sol";
import "contracts/p0/Component.sol";

/**
 * @title Issuer
 * @notice Handles issuance and redemption of RToken.
 */
contract IssuerP0 is IIssuer, Component {
    using FixLib for Fix;
    using SafeERC20 for IERC20;

    /// Begin a time-delayed issuance of RToken for basket collateral
    /// User Action
    /// @param amount {qTok} The quantity of RToken to issue
    /// @return deposits {qTok} The quantities of collateral tokens transferred in
    function issue(uint256 amount) public notPaused returns (uint256[] memory deposits) {
        require(amount > 0, "Cannot issue zero");
        // Call collective state keepers.

        main.poke();
        IBasketHandler basketHandler = main.basketHandler();
        IRToken rToken = main.rToken();

        require(basketHandler.status() == CollateralStatus.SOUND, "collateral not sound");

        uint256 rTokSupply = rToken.totalSupply(); // {qRTok}
        Fix baskets = (rTokSupply > 0) // {BU}
            ? rToken.basketsNeeded().mulu(amount).divuRound(rTokSupply) // {BU * qRTok / qRTok}
            : main.assetRegistry().toAsset(rToken).fromQ(toFix(amount)); // {qRTok / qRTok}

        address[] memory erc20s;
        (erc20s, deposits) = basketHandler.quote(baskets, RoundingApproach.CEIL);

        // Transfer collateral to RToken
        for (uint256 i = 0; i < erc20s.length; i++) {
            IERC20(erc20s[i]).safeTransferFrom(_msgSender(), address(rToken), deposits[i]);
        }

        rToken.issue(_msgSender(), amount, baskets, erc20s, deposits);
        emit IssuanceStarted(_msgSender(), amount, baskets);
    }

    /// Redeem RToken for basket collateral
    /// User Action
    /// @param amount {qTok} The quantity {qRToken} of RToken to redeem
    /// @return withdrawals {qTok} The quantities of collateral tokens transferred out
    function redeem(uint256 amount) public returns (uint256[] memory withdrawals) {
        require(amount > 0, "Cannot redeem zero");
        // Call collective state keepers
        main.poke();

        IBasketHandler basketHandler = main.basketHandler();
        IRToken rToken = main.rToken();

        require(rToken.balanceOf(_msgSender()) >= amount, "not enough RToken");

        // {BU} = {BU} * {qRTok} / {qRTok}
        Fix baskets = rToken.basketsNeeded().mulu(amount).divuRound(rToken.totalSupply());

        address[] memory erc20s;
        (erc20s, withdrawals) = basketHandler.quote(baskets, RoundingApproach.FLOOR);

        // {1} = {qRTok} / {qRTok}
        Fix prorate = toFix(amount).divu(rToken.totalSupply());
        rToken.redeem(_msgSender(), amount, baskets);

        IBackingManager backingMgr = main.backingManager();
        backingMgr.grantAllowances();

        // Bound the redemption by the prorata share, in case we're currently under-capitalized
        for (uint256 i = 0; i < erc20s.length; i++) {
            uint256 bal = IERC20(erc20s[i]).balanceOf(address(backingMgr));
            // {qTok} = {1} * {qTok}
            uint256 prorata = prorate.mulu(bal).floor();

            withdrawals[i] = Math.min(withdrawals[i], prorata);
            IERC20(erc20s[i]).safeTransferFrom(address(backingMgr), _msgSender(), withdrawals[i]);
        }

        emit Redemption(_msgSender(), amount, baskets);
    }

    /// @return {qRTok} How much RToken `account` can issue given current holdings
    function maxIssuable(address account) external view returns (uint256) {
        Fix needed = main.rToken().basketsNeeded();
        Fix held = main.basketHandler().basketsHeldBy(account);
        IAsset rTokenAsset = main.assetRegistry().toAsset(main.rToken());

        if (needed.eq(FIX_ZERO)) return rTokenAsset.toQ(held).floor();

        // {qRTok} = {BU} * {qRTok} / {BU}
        return held.mulu(main.rToken().totalSupply()).div(needed).floor();
    }

    /// @return p {UoA/rTok} The protocol's best guess of the RToken price on markets
    function rTokenPrice() external view returns (Fix p) {
        IRToken rToken = main.rToken();
        IAsset rTokenAsset = main.assetRegistry().toAsset(rToken);

        Fix rTokSupply = rTokenAsset.fromQ(toFix(rToken.totalSupply()));
        if (rTokSupply.eq(FIX_ZERO)) return main.basketHandler().price();

        // {UoA/rTok} = {UoA/BU} * {BU} / {rTok}
        return main.basketHandler().price().mul(rToken.basketsNeeded()).div(rTokSupply);
    }
}