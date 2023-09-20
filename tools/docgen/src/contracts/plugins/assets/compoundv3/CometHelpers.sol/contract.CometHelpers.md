# CometHelpers
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/assets/compoundv3/CometHelpers.sol)


## State Variables
### BASE_INDEX_SCALE

```solidity
uint64 internal constant BASE_INDEX_SCALE = 1e15;
```


### EXP_SCALE

```solidity
uint256 public constant EXP_SCALE = 1e18;
```


### BASE_SCALE

```solidity
uint256 public constant BASE_SCALE = 1e6;
```


## Functions
### safe64


```solidity
function safe64(uint256 n) internal pure returns (uint64);
```

### signed256


```solidity
function signed256(uint256 n) internal pure returns (int256);
```

### presentValueSupply


```solidity
function presentValueSupply(uint64 baseSupplyIndex_, uint104 principalValue_) internal pure returns (uint256);
```

### principalValueSupply


```solidity
function principalValueSupply(uint64 baseSupplyIndex_, uint256 presentValue_) internal pure returns (uint104);
```

### safe104


```solidity
function safe104(uint256 n) internal pure returns (uint104);
```

### unsigned256


```solidity
function unsigned256(int256 n) internal pure returns (uint256);
```

### mulFactor

*Multiply a number by a factor*


```solidity
function mulFactor(uint256 n, uint256 factor) internal pure returns (uint256);
```

### divBaseWei


```solidity
function divBaseWei(uint256 n, uint256 baseWei) internal pure returns (uint256);
```

## Errors
### InvalidUInt64

```solidity
error InvalidUInt64();
```

### InvalidUInt104

```solidity
error InvalidUInt104();
```

### InvalidInt256

```solidity
error InvalidInt256();
```

### NegativeNumber

```solidity
error NegativeNumber();
```

