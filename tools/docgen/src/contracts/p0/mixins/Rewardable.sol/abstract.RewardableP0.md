# RewardableP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/p0/mixins/Rewardable.sol)

**Inherits:**
[ComponentP0](/tools/docgen/src/contracts/p0/mixins/Component.sol/abstract.ComponentP0.md), [IRewardableComponent](/tools/docgen/src/contracts/interfaces/IRewardable.sol/interface.IRewardableComponent.md)

A mix-in that makes a contract able to claim rewards


## Functions
### claimRewards

Claim all rewards
Collective Action


```solidity
function claimRewards() external notPausedOrFrozen;
```

### claimRewardsSingle

Claim rewards for a single asset
Collective Action


```solidity
function claimRewardsSingle(IERC20 erc20) external notPausedOrFrozen;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`erc20`|`IERC20`|The ERC20 to claimRewards on|


