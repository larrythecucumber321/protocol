# function mulDiv256
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/libraries/Fixed.sol)

### mulDiv256(uint256, uint256, uint256)
Return (x*y/z), avoiding intermediate overflow.

*Only use if you need to avoid overflow; costlier than x * y / z*


```solidity
function mulDiv256(uint256 x, uint256 y, uint256 z) pure returns (uint256 result);
```

### mulDiv256(uint256, uint256, uint256, RoundingMode)
Return (x*y/z), avoiding intermediate overflow.

*Only use if you need to avoid overflow; costlier than x * y / z*


```solidity
function mulDiv256(uint256 x, uint256 y, uint256 z, RoundingMode rounding) pure returns (uint256);
```

