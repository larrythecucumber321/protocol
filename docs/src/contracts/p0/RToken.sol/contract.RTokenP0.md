# RTokenP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p0/RToken.sol)

**Inherits:**
[ComponentP0](/contracts/p0/mixins/Component.sol/abstract.ComponentP0.md), [ERC20PermitUpgradeable](/contracts/vendor/ERC20PermitUpgradeable.sol/abstract.ERC20PermitUpgradeable.md), [IRToken](/contracts/interfaces/IRToken.sol/interface.IRToken.md)

An ERC20 with an elastic supply and governable exchange rate to basket units.


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
Weakly immutable: expected to be an IPFS link but could be the mandate itself


```solidity
string public mandate;
```


### accounts

```solidity
EnumerableSet.AddressSet internal accounts;
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


## Functions
### init


```solidity
function init(
    IMain main_,
    string memory name_,
    string memory symbol_,
    string calldata mandate_,
    ThrottleLib.Params calldata issuanceThrottleParams_,
    ThrottleLib.Params calldata redemptionThrottleParams_
) public initializer;
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
function mint(address recipient, uint256 amount) external notPausedOrFrozen exchangeRateIsValidAfter;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`recipient`|`address`|The recipient of the newly minted RToken|
|`amount`|`uint256`|{qRTok} The amount to be minted|


### melt

Melt a quantity of RToken from the caller's account, increasing the basket rate


```solidity
function melt(uint256 amount) external exchangeRateIsValidAfter;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint256`|{qRTok} The amount to be melted|


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

