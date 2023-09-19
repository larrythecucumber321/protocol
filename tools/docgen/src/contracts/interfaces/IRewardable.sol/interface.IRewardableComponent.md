# IRewardableComponent
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IRewardable.sol)

**Inherits:**
[IRewardable](/tools/docgen/src/contracts/interfaces/IRewardable.sol/interface.IRewardable.md)

A simple interface mixin to support claiming of rewards.


## Functions
### claimRewardsSingle

Claim rewards for a single ERC20
Must emit `RewardsClaimed` for each token rewards are claimed for

*delegatecall: there be dragons here!*


```solidity
function claimRewardsSingle(IERC20 erc20) external;
```

