# TestICollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IAsset.sol)

**Inherits:**
[TestIAsset](/tools/docgen/src/contracts/interfaces/IAsset.sol/interface.TestIAsset.md), [ICollateral](/tools/docgen/src/contracts/interfaces/IAsset.sol/interface.ICollateral.md)


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


