# FacadeWriteLib
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/facade/lib/FacadeWriteLib.sol)


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


