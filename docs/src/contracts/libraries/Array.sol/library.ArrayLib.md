# ArrayLib
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/libraries/Array.sol)


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


