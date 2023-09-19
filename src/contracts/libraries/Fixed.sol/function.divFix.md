# divFix
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/libraries/Fixed.sol)

Divide a uint by a uint192, yielding a uint192
This may also fail if the result is MIN_uint192! not fixing this for optimization's sake.


```solidity
function divFix(uint256 x, uint192 y) pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x / y|


