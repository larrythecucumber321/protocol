# IRewardable
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IRewardable.sol)

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

