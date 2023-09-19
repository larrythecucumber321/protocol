# ICometRewards
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/compoundv3/vendor/ICometRewards.sol)


## Functions
### rewardConfig


```solidity
function rewardConfig(address) external view returns (RewardConfig memory);
```

### claim


```solidity
function claim(address comet, address src, bool shouldAccrue) external;
```

### getRewardOwed


```solidity
function getRewardOwed(address comet, address account) external returns (RewardOwed memory);
```

### claimTo


```solidity
function claimTo(address comet, address src, address to, bool shouldAccrue) external;
```

## Structs
### RewardConfig

```solidity
struct RewardConfig {
    address token;
    uint64 rescaleFactor;
    bool shouldUpscale;
}
```

### RewardOwed

```solidity
struct RewardOwed {
    address token;
    uint256 owed;
}
```

