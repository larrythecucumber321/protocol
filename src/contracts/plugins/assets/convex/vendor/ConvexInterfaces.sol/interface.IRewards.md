# IRewards
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/assets/convex/vendor/ConvexInterfaces.sol)


## Functions
### stake


```solidity
function stake(address, uint256) external;
```

### stakeFor


```solidity
function stakeFor(address, uint256) external;
```

### withdraw


```solidity
function withdraw(address, uint256) external;
```

### exit


```solidity
function exit(address) external;
```

### getReward


```solidity
function getReward(address) external;
```

### queueNewRewards


```solidity
function queueNewRewards(uint256) external;
```

### notifyRewardAmount


```solidity
function notifyRewardAmount(uint256) external;
```

### addExtraReward


```solidity
function addExtraReward(address) external;
```

### stakingToken


```solidity
function stakingToken() external view returns (address);
```

### rewardToken


```solidity
function rewardToken() external view returns (address);
```

### earned


```solidity
function earned(address account) external view returns (uint256);
```

