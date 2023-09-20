# IRewards
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/assets/convex/vendor/ConvexInterfaces.sol)


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

