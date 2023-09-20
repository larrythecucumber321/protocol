# fullMul
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/libraries/Fixed.sol)

Return (x*y) as a "virtual uint512" (lo, hi), representing (hi*2**256 + lo)
Adapted from sources:
https://medium.com/wicketh/27650fec525d, https://medium.com/coinmonks/4db014e080b1

*Intended to be internal to this library*


```solidity
function fullMul(uint256 x, uint256 y) pure returns (uint256 hi, uint256 lo);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`hi`|`uint256`|(hi, lo) satisfies  hi*(2**256) + lo == x * y|
|`lo`|`uint256`|(paired with `hi`)|


