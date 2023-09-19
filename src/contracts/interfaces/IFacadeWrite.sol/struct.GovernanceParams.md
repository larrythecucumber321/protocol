# GovernanceParams
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IFacadeWrite.sol)

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

