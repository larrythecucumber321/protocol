# UIntOutOfBounds
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/libraries/Fixed.sol)

**Author:**
Matt Elder <matt.elder@reserve.org> and the Reserve Team <https://reserve.org>
The logical type `uint192 ` is a 192 bit value, representing an 18-decimal Fixed-point
fractional value.  This is what's described in the Solidity documentation as
"fixed192x18" -- a value represented by 192 bits, that makes 18 digits available to
the right of the decimal point.
The range of values that uint192 can represent is about [-1.7e20, 1.7e20].
Unless a function explicitly says otherwise, it will fail on overflow.
To be clear, the following should hold:
toFix(0) == 0
toFix(1) == 1e18


```solidity
error UIntOutOfBounds();
```

