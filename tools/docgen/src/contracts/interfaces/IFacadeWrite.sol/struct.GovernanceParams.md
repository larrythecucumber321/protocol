# GovernanceParams
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IFacadeWrite.sol)

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

