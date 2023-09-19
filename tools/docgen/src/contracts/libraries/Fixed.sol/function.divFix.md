# divFix
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/libraries/Fixed.sol)

Divide a uint by a uint192, yielding a uint192
This may also fail if the result is MIN_uint192! not fixing this for optimization's sake.


```solidity
function divFix(uint256 x, uint192 y) pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x / y|


