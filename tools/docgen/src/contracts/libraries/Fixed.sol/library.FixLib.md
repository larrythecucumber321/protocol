# FixLib
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/libraries/Fixed.sol)


## State Variables
### FIX_HALF

```solidity
uint64 constant FIX_HALF = uint64(FIX_SCALE) / 2;
```


## Functions
### toUint

Again, all arithmetic functions fail if and only if the result is out of bounds.
Convert this fixed-point value to a uint. Round towards zero if needed.


```solidity
function toUint(uint192 x) internal pure returns (uint136);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint136`|x|


### toUint

Convert this uint192 to a uint


```solidity
function toUint(uint192 x, RoundingMode rounding) internal pure returns (uint136);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint136`|x|


### shiftl

Return the uint192 shifted to the left by `decimal` digits
(Similar to a bitshift but in base 10)


```solidity
function shiftl(uint192 x, int8 decimals) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x * 10**decimals|


### shiftl

Return the uint192 shifted to the left by `decimal` digits
(Similar to a bitshift but in base 10)


```solidity
function shiftl(uint192 x, int8 decimals, RoundingMode rounding) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x * 10**decimals|


### plus

Add a uint192 to this uint192


```solidity
function plus(uint192 x, uint192 y) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x + y|


### plusu

Add a uint to this uint192


```solidity
function plusu(uint192 x, uint256 y) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x + y|


### minus

Subtract a uint192 from this uint192


```solidity
function minus(uint192 x, uint192 y) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x - y|


### minusu

Subtract a uint from this uint192


```solidity
function minusu(uint192 x, uint256 y) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x - y|


### mul

Multiply this uint192 by a uint192
Round truncated values to the nearest available value. 5e-19 rounds away from zero.


```solidity
function mul(uint192 x, uint192 y) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x * y|


### mul

Multiply this uint192 by a uint192


```solidity
function mul(uint192 x, uint192 y, RoundingMode rounding) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x * y|


### mulu

Multiply this uint192 by a uint


```solidity
function mulu(uint192 x, uint256 y) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x * y|


### div

Divide this uint192 by a uint192


```solidity
function div(uint192 x, uint192 y) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x / y|


### div

Divide this uint192 by a uint192


```solidity
function div(uint192 x, uint192 y, RoundingMode rounding) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x / y|


### divu

Divide this uint192 by a uint


```solidity
function divu(uint192 x, uint256 y) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x / y|


### divu

Divide this uint192 by a uint


```solidity
function divu(uint192 x, uint256 y, RoundingMode rounding) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x / y|


### powu

Raise this uint192 to a nonnegative integer power. Requires that x_ <= FIX_ONE
Gas cost is O(lg(y)), precision is +- 1e-18.


```solidity
function powu(uint192 x_, uint48 y) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x_ ** y|


### lt

Comparison operators...


```solidity
function lt(uint192 x, uint192 y) internal pure returns (bool);
```

### lte


```solidity
function lte(uint192 x, uint192 y) internal pure returns (bool);
```

### gt


```solidity
function gt(uint192 x, uint192 y) internal pure returns (bool);
```

### gte


```solidity
function gte(uint192 x, uint192 y) internal pure returns (bool);
```

### eq


```solidity
function eq(uint192 x, uint192 y) internal pure returns (bool);
```

### neq


```solidity
function neq(uint192 x, uint192 y) internal pure returns (bool);
```

### near

Return whether or not this uint192 is less than epsilon away from y.


```solidity
function near(uint192 x, uint192 y, uint192 epsilon) internal pure returns (bool);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`||x - y| < epsilon|


### shiftl_toUint

Shift this uint192 left by `decimals` digits, and convert to a uint


```solidity
function shiftl_toUint(uint192 x, int8 decimals) internal pure returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|x * 10**decimals|


### shiftl_toUint

Shift this uint192 left by `decimals` digits, and convert to a uint.


```solidity
function shiftl_toUint(uint192 x, int8 decimals, RoundingMode rounding) internal pure returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|x * 10**decimals|


### mulu_toUint

Multiply this uint192 by a uint, and output the result as a uint


```solidity
function mulu_toUint(uint192 x, uint256 y) internal pure returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|x * y|


### mulu_toUint

Multiply this uint192 by a uint, and output the result as a uint


```solidity
function mulu_toUint(uint192 x, uint256 y, RoundingMode rounding) internal pure returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|x * y|


### mul_toUint

Multiply this uint192 by a uint192 and output the result as a uint


```solidity
function mul_toUint(uint192 x, uint192 y) internal pure returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|x * y|


### mul_toUint

Multiply this uint192 by a uint192 and output the result as a uint


```solidity
function mul_toUint(uint192 x, uint192 y, RoundingMode rounding) internal pure returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|x * y|


### muluDivu

Compute x * y / z avoiding intermediate overflow

*Only use if you need to avoid overflow; costlier than x * y / z*


```solidity
function muluDivu(uint192 x, uint256 y, uint256 z) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x * y / z|


### muluDivu

Compute x * y / z, avoiding intermediate overflow

*Only use if you need to avoid overflow; costlier than x * y / z*


```solidity
function muluDivu(uint192 x, uint256 y, uint256 z, RoundingMode rounding) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x * y / z|


### mulDiv

Compute x * y / z on Fixes, avoiding intermediate overflow

*Only use if you need to avoid overflow; costlier than x * y / z*


```solidity
function mulDiv(uint192 x, uint192 y, uint192 z) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x * y / z|


### mulDiv

Compute x * y / z on Fixes, avoiding intermediate overflow

*Only use if you need to avoid overflow; costlier than x * y / z*


```solidity
function mulDiv(uint192 x, uint192 y, uint192 z, RoundingMode rounding) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|x * y / z|


### safeMul

Multiply two fixes, rounding up to FIX_MAX and down to 0


```solidity
function safeMul(uint192 a, uint192 b, RoundingMode rounding) internal pure returns (uint192);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`a`|`uint192`|First param to multiply|
|`b`|`uint192`|Second param to multiply|
|`rounding`|`RoundingMode`||


