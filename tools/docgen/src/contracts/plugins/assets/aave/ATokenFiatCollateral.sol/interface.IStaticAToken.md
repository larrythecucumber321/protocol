# IStaticAToken
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/aave/ATokenFiatCollateral.sol)

**Inherits:**
IERC20Metadata


## Functions
### claimRewardsToSelf

Claim rewards


```solidity
function claimRewardsToSelf(bool forceUpdate) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`forceUpdate`|`bool`|Flag to retrieve latest rewards from `INCENTIVES_CONTROLLER`|


### rate

Returns the Aave liquidity index of the underlying aToken, denominated rate here
as it can be considered as an ever-increasing exchange rate


```solidity
function rate() external view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The liquidity index|


### REWARD_TOKEN


```solidity
function REWARD_TOKEN() external view returns (IERC20);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`IERC20`|The reward token, ie stkAAVE|


