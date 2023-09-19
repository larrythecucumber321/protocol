# _safeWrap
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/libraries/Fixed.sol)

Explicitly convert a uint256 to a uint192. Revert if the input is out of bounds.


```solidity
function _safeWrap(uint256 x) pure returns (uint192);
```

