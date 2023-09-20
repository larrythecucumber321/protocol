# IRewardableComponent
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IRewardable.sol)

**Inherits:**
[IRewardable](/contracts/interfaces/IRewardable.sol/interface.IRewardable.md)

A simple interface mixin to support claiming of rewards.


## Functions
### claimRewardsSingle

Claim rewards for a single ERC20
Must emit `RewardsClaimed` for each token rewards are claimed for

*delegatecall: there be dragons here!*


```solidity
function claimRewardsSingle(IERC20 erc20) external;
```
