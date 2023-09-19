# RewardableLibP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/p1/mixins/RewardableLib.sol)

A library that allows a contract to claim rewards

*The caller must implement the IRewardable interface!*


## Functions
### claimRewards

Claim all rewards


```solidity
function claimRewards(IAssetRegistry reg) internal;
```

### claimRewardsSingle

Claim rewards for a single ERC20


```solidity
function claimRewardsSingle(IAsset asset) internal;
```

