# function shiftl_toFix
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/libraries/Fixed.sol)

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

