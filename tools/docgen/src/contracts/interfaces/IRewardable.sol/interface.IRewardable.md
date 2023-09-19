# IRewardable
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IRewardable.sol)

A simple interface mixin to support claiming of rewards.


## Functions
### claimRewards

Claim rewards earned by holding a balance of the ERC20 token
Must emit `RewardsClaimed` for each token rewards are claimed for

*delegatecall: there be dragons here!*


```solidity
function claimRewards() external;
```

## Events
### RewardsClaimed
Emitted whenever a reward token balance is claimed


```solidity
event RewardsClaimed(IERC20 indexed erc20, uint256 indexed amount);
```

