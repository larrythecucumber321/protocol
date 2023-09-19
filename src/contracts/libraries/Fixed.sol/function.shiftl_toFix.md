# function shiftl_toFix
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/libraries/Fixed.sol)

### shiftl_toFix(uint256, int8)
Convert a uint to its fixed-point representation, and left-shift its value `shiftLeft`
decimal digits.


```solidity
function shiftl_toFix(uint256 x, int8 shiftLeft) pure returns (uint192);
```

### shiftl_toFix(uint256, int8, RoundingMode)

```solidity
function shiftl_toFix(uint256 x, int8 shiftLeft, RoundingMode rounding) pure returns (uint192);
```

