# RTokenP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/p1/RToken.sol)

**Inherits:**
[ComponentP1](/tools/docgen/src/contracts/p1/mixins/Component.sol/abstract.ComponentP1.md), [ERC20PermitUpgradeable](/tools/docgen/src/contracts/vendor/ERC20PermitUpgradeable.sol/abstract.ERC20PermitUpgradeable.md), [IRToken](/tools/docgen/src/contracts/interfaces/IRToken.sol/interface.IRToken.md)


## State Variables
### MIN_THROTTLE_RATE_AMT

```solidity
uint256 public constant MIN_THROTTLE_RATE_AMT = 1e18;
```


### MAX_THROTTLE_RATE_AMT

```solidity
uint256 public constant MAX_THROTTLE_RATE_AMT = 1e48;
```


### MAX_THROTTLE_PCT_AMT

```solidity
uint192 public constant MAX_THROTTLE_PCT_AMT = 1e18;
```


### MIN_EXCHANGE_RATE

```solidity
uint192 public constant MIN_EXCHANGE_RATE = 1e9;
```


### MAX_EXCHANGE_RATE

```solidity
uint192 public constant MAX_EXCHANGE_RATE = 1e27;
```


### mandate
The mandate describes what goals its governors should try to achieve. By succinctly
explaining the RToken’s purpose and what the RToken is intended to do, it provides common
ground for the governors to decide upon priorities and how to weigh tradeoffs.
Example Mandates:
- Capital preservation first. Spending power preservation second. Permissionless
access third.
- Capital preservation above all else. All revenues fund the over-collateralization pool.
- Risk-neutral pursuit of profit for token holders.
Maximize (gross revenue - payments for over-collateralization and governance).
- This RToken holds only FooCoin, to provide a trade for hedging against its
possible collapse.
The mandate may also be a URI to a longer body of text, presumably on IPFS or some other
immutable data store.


```solidity
string public mandate;
```


### assetRegistry

```solidity
IAssetRegistry private assetRegistry;
```


### basketHandler

```solidity
IBasketHandler private basketHandler;
```


### backingManager

```solidity
IBackingManager private backingManager;
```


### furnace

```solidity
IFurnace private furnace;
```


### basketsNeeded

```solidity
uint192 public basketsNeeded;
```


### issuanceThrottle

```solidity
ThrottleLib.Throttle private issuanceThrottle;
```


### redemptionThrottle

```solidity
ThrottleLib.Throttle private redemptionThrottle;
```


### __gap
*This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps*


```solidity
uint256[42] private __gap;
```


## Functions
### init


```solidity
function init(
    IMain main_,
    string calldata name_,
    string calldata symbol_,
    string calldata mandate_,
    ThrottleLib.Params calldata issuanceThrottleParams_,
    ThrottleLib.Params calldata redemptionThrottleParams_
) external initializer;
```

### exchangeRateIsValidAfter

after fn(), assert exchangeRate in [MIN_EXCHANGE_RATE, MAX_EXCHANGE_RATE]


```solidity
modifier exchangeRateIsValidAfter();
```

### issue

Issue an RToken with basket collateral


```solidity
function issue(uint256 amount) public;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint256`|{qTok} The quantity of RToken to issue|


### issueTo

Issue an RToken with basket collateral, to a particular recipient


```solidity
function issueTo(address recipient, uint256 amount) public notPausedOrFrozen exchangeRateIsValidAfter;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`recipient`|`address`|The address to receive the issued RTokens|
|`amount`|`uint256`|{qRTok} The quantity of RToken to issue|


### redeem

Redeem RToken for basket collateral


```solidity
function redeem(uint256 amount, uint48 basketNonce) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint256`|{qTok} The quantity {qRToken} of RToken to redeem|
|`basketNonce`|`uint48`|The nonce of the basket the redemption should be from; else reverts|


### redeemTo

Redeem RToken for basket collateral to a particular recipient


```solidity
function redeemTo(address recipient, uint256 amount, uint48 basketNonce) public notFrozen exchangeRateIsValidAfter;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`recipient`|`address`|The address to receive the backing collateral tokens|
|`amount`|`uint256`|{qRTok} The quantity {qRToken} of RToken to redeem|
|`basketNonce`|`uint48`|The nonce of the basket the redemption should be from; else reverts|


### mint

Mint a quantity of RToken to the `recipient`, decreasing the basket rate


```solidity
function mint(address recipient, uint256 amtRToken) external notPausedOrFrozen exchangeRateIsValidAfter;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`recipient`|`address`|The recipient of the newly minted RToken|
|`amtRToken`|`uint256`|{qRTok} The amtRToken to be minted|


### melt

Melt a quantity of RToken from the caller's account, increasing the basket rate


```solidity
function melt(uint256 amtRToken) external exchangeRateIsValidAfter;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amtRToken`|`uint256`|{qRTok} The amtRToken to be melted|


### setBasketsNeeded

An affordance of last resort for Main in order to ensure re-capitalization


```solidity
function setBasketsNeeded(uint192 basketsNeeded_) external notPausedOrFrozen exchangeRateIsValidAfter;
```

### monetizeDonations

Sends all token balance of erc20 (if it is registered) to the BackingManager


```solidity
function monetizeDonations(IERC20 erc20) external notPausedOrFrozen;
```

### issuanceAvailable


```solidity
function issuanceAvailable() external view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|{qRTok} The maximum issuance that can be performed in the current block|


### redemptionAvailable


```solidity
function redemptionAvailable() external view returns (uint256 available);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`available`|`uint256`|{qRTok} The maximum redemption that can be performed in the current block|


### issuanceThrottleParams


```solidity
function issuanceThrottleParams() external view returns (ThrottleLib.Params memory);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`ThrottleLib.Params`|The issuance throttle parametrization|


### redemptionThrottleParams


```solidity
function redemptionThrottleParams() external view returns (ThrottleLib.Params memory);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`ThrottleLib.Params`|The redemption throttle parametrization|


### setIssuanceThrottleParams


```solidity
function setIssuanceThrottleParams(ThrottleLib.Params calldata params) public governance;
```

### setRedemptionThrottleParams


```solidity
function setRedemptionThrottleParams(ThrottleLib.Params calldata params) public governance;
```

### _beforeTokenTransfer

*Hook that is called before any transfer of tokens. This includes
minting and burning.
Calling conditions:
- when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
will be transferred to `to`.
- when `from` is zero, `amount` tokens will be minted for `to`.
- when `to` is zero, `amount` of ``from``'s tokens will be burned.
- `from` and `to` are never both zero.*


```solidity
function _beforeTokenTransfer(address, address to, uint256) internal virtual override;
```

