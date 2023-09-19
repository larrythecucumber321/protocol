# ArrayLib
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/libraries/Array.sol)


## Functions
### allUnique

O(n^2)


```solidity
function allUnique(IERC20[] memory arr) internal pure returns (bool);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|If the array contains all unique addresses|


### sortedAndAllUnique

O(n) -- must already be in sorted ascending order!


```solidity
function sortedAndAllUnique(IERC20[] memory arr) internal pure returns (bool);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|If the array contains all unique addresses, in ascending order|


