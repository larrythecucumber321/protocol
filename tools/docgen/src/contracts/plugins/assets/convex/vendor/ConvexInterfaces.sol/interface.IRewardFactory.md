# IRewardFactory
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/assets/convex/vendor/ConvexInterfaces.sol)


## Functions
### setAccess


```solidity
function setAccess(address, bool) external;
```

### CreateCrvRewards


```solidity
function CreateCrvRewards(uint256, address) external returns (address);
```

### CreateTokenRewards


```solidity
function CreateTokenRewards(address, address, address) external returns (address);
```

### activeRewardCount


```solidity
function activeRewardCount(address) external view returns (uint256);
```

### addActiveReward


```solidity
function addActiveReward(address, uint256) external returns (bool);
```

### removeActiveReward


```solidity
function removeActiveReward(address, uint256) external returns (bool);
```

