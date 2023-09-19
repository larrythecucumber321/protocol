# RayMathNoRounding
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/assets/aave/RayMathNoRounding.sol)


## State Variables
### RAY

```solidity
uint256 internal constant RAY = 1e27;
```


### WAD_RAY_RATIO

```solidity
uint256 internal constant WAD_RAY_RATIO = 1e9;
```


## Functions
### rayMulNoRounding


```solidity
function rayMulNoRounding(uint256 a, uint256 b) internal pure returns (uint256);
```

### rayDivNoRounding


```solidity
function rayDivNoRounding(uint256 a, uint256 b) internal pure returns (uint256);
```

### rayToWadNoRounding


```solidity
function rayToWadNoRounding(uint256 a) internal pure returns (uint256);
```

