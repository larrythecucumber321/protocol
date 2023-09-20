# IRewardFactory
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/convex/vendor/ConvexInterfaces.sol)


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

