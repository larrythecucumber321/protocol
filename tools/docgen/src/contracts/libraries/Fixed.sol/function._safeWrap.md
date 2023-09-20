# _safeWrap
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/libraries/Fixed.sol)

Explicitly convert a uint256 to a uint192. Revert if the input is out of bounds.


```solidity
function _safeWrap(uint256 x) pure returns (uint192);
```
