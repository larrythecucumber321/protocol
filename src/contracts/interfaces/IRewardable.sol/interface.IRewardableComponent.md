# IRewardableComponent
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IRewardable.sol)

**Inherits:**
[IRewardable](/src/contracts/interfaces/IRewardable.sol/interface.IRewardable.md)

A simple interface mixin to support claiming of rewards.


## Functions
### claimRewardsSingle

Claim rewards for a single ERC20
Must emit `RewardsClaimed` for each token rewards are claimed for

*delegatecall: there be dragons here!*


```solidity
function claimRewardsSingle(IERC20 erc20) external;
```

