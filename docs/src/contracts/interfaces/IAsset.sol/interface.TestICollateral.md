# TestICollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IAsset.sol)

**Inherits:**
[TestIAsset](/contracts/interfaces/IAsset.sol/interface.TestIAsset.md), [ICollateral](/contracts/interfaces/IAsset.sol/interface.ICollateral.md)


## Functions
### whenDefault


```solidity
function whenDefault() external view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The epoch timestamp when the collateral will default from IFFY to DISABLED|


### delayUntilDefault


```solidity
function delayUntilDefault() external view returns (uint48);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint48`|The amount of time a collateral must be in IFFY status until being DISABLED|


