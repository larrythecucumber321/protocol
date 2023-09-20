# IRewardableComponent
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IRewardable.sol)

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

