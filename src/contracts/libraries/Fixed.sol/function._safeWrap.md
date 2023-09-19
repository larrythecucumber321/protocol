# _safeWrap
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/libraries/Fixed.sol)

Explicitly convert a uint256 to a uint192. Revert if the input is out of bounds.


```solidity
function _safeWrap(uint256 x) pure returns (uint192);
```

