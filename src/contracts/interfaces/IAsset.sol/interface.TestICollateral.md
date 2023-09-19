# TestICollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IAsset.sol)

**Inherits:**
[TestIAsset](/src/contracts/interfaces/IAsset.sol/interface.TestIAsset.md), [ICollateral](/src/contracts/interfaces/IAsset.sol/interface.ICollateral.md)


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


