# divFix
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/libraries/Fixed.sol)

Divide a uint by a uint192, yielding a uint192
This may also fail if the result is MIN_uint192! not fixing this for optimization's sake.


```solidity
function divFix(uint256 x, uint192 y) pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x / y|


