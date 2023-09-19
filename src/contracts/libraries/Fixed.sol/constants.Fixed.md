# Constants
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/libraries/Fixed.sol)

### UIntOutofBoundsHash

```solidity
bytes32 constant UIntOutofBoundsHash = keccak256(abi.encodeWithSignature("UIntOutOfBounds()"));
```

### FIX_ONE_256

```solidity
uint256 constant FIX_ONE_256 = 1e18;
```

### FIX_DECIMALS

```solidity
uint8 constant FIX_DECIMALS = 18;
```

### FIX_SCALE

```solidity
uint64 constant FIX_SCALE = 1e18;
```

### FIX_SCALE_SQ

```solidity
uint128 constant FIX_SCALE_SQ = 1e36;
```

### FIX_MAX_INT

```solidity
uint192 constant FIX_MAX_INT = type(uint192).max / FIX_SCALE;
```

### FIX_ZERO

```solidity
uint192 constant FIX_ZERO = 0;
```

### FIX_ONE

```solidity
uint192 constant FIX_ONE = FIX_SCALE;
```

### FIX_MAX

```solidity
uint192 constant FIX_MAX = type(uint192).max;
```

### FIX_MIN

```solidity
uint192 constant FIX_MIN = 0;
```

### FLOOR

```solidity
RoundingMode constant FLOOR = RoundingMode.FLOOR;
```

### ROUND

```solidity
RoundingMode constant ROUND = RoundingMode.ROUND;
```

### CEIL

```solidity
RoundingMode constant CEIL = RoundingMode.CEIL;
```

