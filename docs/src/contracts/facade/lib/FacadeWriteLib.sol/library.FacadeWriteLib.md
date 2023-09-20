# FacadeWriteLib
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/facade/lib/FacadeWriteLib.sol)


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


