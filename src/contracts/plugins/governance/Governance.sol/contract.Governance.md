# Governance
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/governance/Governance.sol)

**Inherits:**
Governor, GovernorSettings, GovernorCountingSimple, GovernorVotes, GovernorVotesQuorumFraction, GovernorTimelockControl


## State Variables
### ONE_HUNDRED_PERCENT

```solidity
uint256 public constant ONE_HUNDRED_PERCENT = 1e8;
```


## Functions
### constructor


```solidity
constructor(
    IStRSRVotes token_,
    TimelockController timelock_,
    uint256 votingDelay_,
    uint256 votingPeriod_,
    uint256 proposalThresholdAsMicroPercent_,
    uint256 quorumPercent
)
    Governor("Governor Alexios")
    GovernorSettings(votingDelay_, votingPeriod_, proposalThresholdAsMicroPercent_)
    GovernorVotes(IVotes(address(token_)))
    GovernorVotesQuorumFraction(quorumPercent)
    GovernorTimelockControl(timelock_);
```

### votingDelay


```solidity
function votingDelay() public view override(IGovernor, GovernorSettings) returns (uint256);
```

### votingPeriod


```solidity
function votingPeriod() public view override(IGovernor, GovernorSettings) returns (uint256);
```

### proposalThreshold


```solidity
function proposalThreshold() public view override(Governor, GovernorSettings) returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|{qStRSR} The number of votes required in order for a voter to become a proposer|


### quorum


```solidity
function quorum(uint256 blockNumber)
    public
    view
    virtual
    override(IGovernor, GovernorVotesQuorumFraction)
    returns (uint256);
```

### state


```solidity
function state(uint256 proposalId) public view override(Governor, GovernorTimelockControl) returns (ProposalState);
```

### propose


```solidity
function propose(address[] memory targets, uint256[] memory values, bytes[] memory calldatas, string memory description)
    public
    override(Governor, IGovernor)
    returns (uint256 proposalId);
```

### queue


```solidity
function queue(address[] memory targets, uint256[] memory values, bytes[] memory calldatas, bytes32 descriptionHash)
    public
    override
    returns (uint256 proposalId);
```

### cancel


```solidity
function cancel(address[] memory targets, uint256[] memory values, bytes[] memory calldatas, bytes32 descriptionHash)
    external;
```

### _execute


```solidity
function _execute(
    uint256 proposalId,
    address[] memory targets,
    uint256[] memory values,
    bytes[] memory calldatas,
    bytes32 descriptionHash
) internal override(Governor, GovernorTimelockControl);
```

### _cancel


```solidity
function _cancel(address[] memory targets, uint256[] memory values, bytes[] memory calldatas, bytes32 descriptionHash)
    internal
    override(Governor, GovernorTimelockControl)
    returns (uint256);
```

### _executor


```solidity
function _executor() internal view override(Governor, GovernorTimelockControl) returns (address);
```

### _getVotes


```solidity
function _getVotes(address account, uint256 blockNumber, bytes memory)
    internal
    view
    override(Governor, GovernorVotes)
    returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|{qStRSR} The voting weight the account had at a previous block number|


### supportsInterface


```solidity
function supportsInterface(bytes4 interfaceId) public view override(Governor, GovernorTimelockControl) returns (bool);
```

### startedInSameEra


```solidity
function startedInSameEra(uint256 proposalId) private view returns (bool);
```

