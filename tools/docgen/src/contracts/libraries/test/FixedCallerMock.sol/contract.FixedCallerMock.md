# FixedCallerMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/libraries/test/FixedCallerMock.sol)


## Functions
### toFix_


```solidity
function toFix_(uint256 x) public pure returns (uint192);
```

### shiftl_toFix_


```solidity
function shiftl_toFix_(uint256 x, int8 d) public pure returns (uint192);
```

### shiftl_toFix_Rnd


```solidity
function shiftl_toFix_Rnd(uint256 x, int8 d, RoundingMode rnd) public pure returns (uint192);
```

### divFix_


```solidity
function divFix_(uint256 x, uint192 y) public pure returns (uint192);
```

### divuu_


```solidity
function divuu_(uint256 x, uint256 y) public pure returns (uint256);
```

### fixMin_


```solidity
function fixMin_(uint192 x, uint192 y) public pure returns (uint192);
```

### fixMax_


```solidity
function fixMax_(uint192 x, uint192 y) public pure returns (uint192);
```

### abs_


```solidity
function abs_(int256 x) public pure returns (uint256);
```

### divrnd_


```solidity
function divrnd_(uint256 n, uint256 d, RoundingMode rnd) public pure returns (uint256);
```

### toUint


```solidity
function toUint(uint192 x) public pure returns (uint256);
```

### toUintRnd


```solidity
function toUintRnd(uint192 x, RoundingMode rnd) public pure returns (uint256);
```

### shiftl


```solidity
function shiftl(uint192 x, int8 decimals) public pure returns (uint192);
```

### shiftlRnd


```solidity
function shiftlRnd(uint192 x, int8 decimals, RoundingMode rnd) public pure returns (uint192);
```

### plus


```solidity
function plus(uint192 x, uint192 y) public pure returns (uint192);
```

### plusu


```solidity
function plusu(uint192 x, uint256 y) public pure returns (uint192);
```

### minus


```solidity
function minus(uint192 x, uint192 y) public pure returns (uint192);
```

### minusu


```solidity
function minusu(uint192 x, uint256 y) public pure returns (uint192);
```

### mul


```solidity
function mul(uint192 x, uint192 y) public pure returns (uint192);
```

### mulRnd


```solidity
function mulRnd(uint192 x, uint192 y, RoundingMode rnd) public pure returns (uint192);
```

### mulu


```solidity
function mulu(uint192 x, uint256 y) public pure returns (uint192);
```

### div


```solidity
function div(uint192 x, uint192 y) public pure returns (uint192);
```

### divRnd


```solidity
function divRnd(uint192 x, uint192 y, RoundingMode rnd) public pure returns (uint192);
```

### divu


```solidity
function divu(uint192 x, uint256 y) public pure returns (uint192);
```

### divuRnd


```solidity
function divuRnd(uint192 x, uint256 y, RoundingMode rnd) public pure returns (uint192);
```

### powu


```solidity
function powu(uint192 x, uint48 y) public pure returns (uint192);
```

### lt


```solidity
function lt(uint192 x, uint192 y) public pure returns (bool);
```

### lte


```solidity
function lte(uint192 x, uint192 y) public pure returns (bool);
```

### gt


```solidity
function gt(uint192 x, uint192 y) public pure returns (bool);
```

### gte


```solidity
function gte(uint192 x, uint192 y) public pure returns (bool);
```

### eq


```solidity
function eq(uint192 x, uint192 y) public pure returns (bool);
```

### neq


```solidity
function neq(uint192 x, uint192 y) public pure returns (bool);
```

### near


```solidity
function near(uint192 x, uint192 y, uint192 epsilon) public pure returns (bool);
```

### shiftl_toUint


```solidity
function shiftl_toUint(uint192 x, int8 d) public pure returns (uint256);
```

### shiftl_toUintRnd


```solidity
function shiftl_toUintRnd(uint192 x, int8 d, RoundingMode rnd) public pure returns (uint256);
```

### mulu_toUint


```solidity
function mulu_toUint(uint192 x, uint256 y) public pure returns (uint256);
```

### mulu_toUintRnd


```solidity
function mulu_toUintRnd(uint192 x, uint256 y, RoundingMode rnd) public pure returns (uint256);
```

### mul_toUint


```solidity
function mul_toUint(uint192 x, uint192 y) public pure returns (uint256);
```

### mul_toUintRnd


```solidity
function mul_toUintRnd(uint192 x, uint192 y, RoundingMode rnd) public pure returns (uint256);
```

### muluDivu


```solidity
function muluDivu(uint192 x, uint256 y, uint256 z) public pure returns (uint192);
```

### muluDivuRnd


```solidity
function muluDivuRnd(uint192 x, uint256 y, uint256 z, RoundingMode rnd) public pure returns (uint192);
```

### mulDiv


```solidity
function mulDiv(uint192 x, uint192 y, uint192 z) public pure returns (uint192);
```

### mulDivRnd


```solidity
function mulDivRnd(uint192 x, uint192 y, uint192 z, RoundingMode rnd) public pure returns (uint192);
```

### safeMul_


```solidity
function safeMul_(uint192 a, uint192 b, RoundingMode rnd) public pure returns (uint192);
```

### mulDiv256_


```solidity
function mulDiv256_(uint256 x, uint256 y, uint256 z) public pure returns (uint256);
```

### mulDiv256Rnd_


```solidity
function mulDiv256Rnd_(uint256 x, uint256 y, uint256 z, RoundingMode rnd) public pure returns (uint256);
```

### fullMul_


```solidity
function fullMul_(uint256 x, uint256 y) public pure returns (uint256 h, uint256 l);
```

