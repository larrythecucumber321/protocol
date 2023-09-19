# GovernanceParams
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IFacadeWrite.sol)

The set of params required to setup decentralized governance


```solidity
struct GovernanceParams {
    uint256 votingDelay;
    uint256 votingPeriod;
    uint256 proposalThresholdAsMicroPercent;
    uint256 quorumPercent;
    uint256 timelockDelay;
}
```

