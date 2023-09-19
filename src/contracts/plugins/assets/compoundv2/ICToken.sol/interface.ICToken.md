# ICToken
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/assets/compoundv2/ICToken.sol)

**Inherits:**
IERC20Metadata

Portion of external interface for CTokens


## Functions
### exchangeRateCurrent

*From Compound Docs:
The current (up to date) exchange rate, scaled by 10^(18 - 8 + Underlying Token Decimals).*


```solidity
function exchangeRateCurrent() external returns (uint256);
```

### exchangeRateStored

*From Compound Docs: The stored exchange rate, with 18 - 8 + UnderlyingAsset.Decimals.*


```solidity
function exchangeRateStored() external view returns (uint256);
```

### underlying


```solidity
function underlying() external view returns (address);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`address`|The address of the underlying token|


### mint

Sender supplies assets into the market and receives cTokens in exchange

*Accrues interest whether or not the operation succeeds, unless reverted*


```solidity
function mint(uint256 mintAmount) external returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`mintAmount`|`uint256`|The amount of the underlying asset to supply|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|uint 0=success, otherwise a failure (see ErrorReporter.sol for details)|


### redeem

Sender redeems cTokens in exchange for the underlying asset

*Accrues interest whether or not the operation succeeds, unless reverted*


```solidity
function redeem(uint256 redeemTokens) external returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`redeemTokens`|`uint256`|The number of cTokens to redeem into underlying|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|uint 0=success, otherwise a failure (see ErrorReporter.sol for details)|


