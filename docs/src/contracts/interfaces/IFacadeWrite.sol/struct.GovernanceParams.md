# GovernanceParams
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IFacadeWrite.sol)

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

