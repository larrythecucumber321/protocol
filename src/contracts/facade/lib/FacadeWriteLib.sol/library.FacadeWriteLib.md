# FacadeWriteLib
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/facade/lib/FacadeWriteLib.sol)


## Functions
### deployGovernance


```solidity
function deployGovernance(
    IStRSRVotes stRSR,
    TimelockController timelock,
    uint256 votingDelay,
    uint256 votingPeriod,
    uint256 proposalThresholdAsMicroPercent,
    uint256 quorumPercent
) external returns (address);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`address`|The new Governance contract address|


