# IDeposit
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/assets/convex/vendor/ConvexInterfaces.sol)


## Functions
### isShutdown


```solidity
function isShutdown() external view returns (bool);
```

### balanceOf


```solidity
function balanceOf(address _account) external view returns (uint256);
```

### totalSupply


```solidity
function totalSupply() external view returns (uint256);
```

### poolInfo


```solidity
function poolInfo(uint256) external view returns (address, address, address, address, address, bool);
```

### rewardClaimed


```solidity
function rewardClaimed(uint256, address, uint256) external;
```

### withdrawTo


```solidity
function withdrawTo(uint256, uint256, address) external;
```

### claimRewards


```solidity
function claimRewards(uint256, address) external returns (bool);
```

### rewardArbitrator


```solidity
function rewardArbitrator() external returns (address);
```

### setGaugeRedirect


```solidity
function setGaugeRedirect(uint256 _pid) external returns (bool);
```

### owner


```solidity
function owner() external returns (address);
```

