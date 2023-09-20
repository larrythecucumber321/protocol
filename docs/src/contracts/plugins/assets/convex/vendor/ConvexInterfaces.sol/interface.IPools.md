# IPools
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/convex/vendor/ConvexInterfaces.sol)


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

