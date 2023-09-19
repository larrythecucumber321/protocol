# IPools
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/assets/convex/vendor/ConvexInterfaces.sol)


## Functions
### addPool


```solidity
function addPool(address _lptoken, address _gauge, uint256 _stashVersion) external returns (bool);
```

### forceAddPool


```solidity
function forceAddPool(address _lptoken, address _gauge, uint256 _stashVersion) external returns (bool);
```

### shutdownPool


```solidity
function shutdownPool(uint256 _pid) external returns (bool);
```

### poolInfo


```solidity
function poolInfo(uint256) external view returns (address, address, address, address, address, bool);
```

### poolLength


```solidity
function poolLength() external view returns (uint256);
```

### gaugeMap


```solidity
function gaugeMap(address) external view returns (bool);
```

### setPoolManager


```solidity
function setPoolManager(address _poolM) external;
```

