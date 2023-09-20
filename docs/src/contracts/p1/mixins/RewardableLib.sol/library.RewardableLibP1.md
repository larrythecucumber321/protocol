# RewardableLibP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p1/mixins/RewardableLib.sol)

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

