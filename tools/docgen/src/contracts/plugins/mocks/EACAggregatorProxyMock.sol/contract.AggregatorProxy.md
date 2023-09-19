# AggregatorProxy
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/mocks/EACAggregatorProxyMock.sol)

**Inherits:**
[AggregatorV2V3Interface](/tools/docgen/src/contracts/plugins/mocks/EACAggregatorProxyMock.sol/interface.AggregatorV2V3Interface.md), [Owned](/tools/docgen/src/contracts/plugins/mocks/EACAggregatorProxyMock.sol/contract.Owned.md)

This contract provides a consistent address for the
CurrentAnwerInterface but delegates where it reads from to the owner, who is
trusted to update it.


## State Variables
### currentPhase

```solidity
Phase private currentPhase;
```


### proposedAggregator

```solidity
AggregatorV2V3Interface public proposedAggregator;
```


### phaseAggregators

```solidity
mapping(uint16 => AggregatorV2V3Interface) public phaseAggregators;
```


### PHASE_OFFSET

```solidity
uint256 private constant PHASE_OFFSET = 64;
```


### PHASE_SIZE

```solidity
uint256 private constant PHASE_SIZE = 16;
```


### MAX_ID

```solidity
uint256 private constant MAX_ID = 2 ** (PHASE_OFFSET + PHASE_SIZE) - 1;
```


## Functions
### constructor


```solidity
constructor(address _aggregator) Owned;
```

### latestAnswer

Reads the current answer from aggregator delegated to.

*#[deprecated] Use latestRoundData instead. This does not error if no
answer has been reached, it will simply return 0. Either wait to point to
an already answered Aggregator or use the recommended latestRoundData
instead which includes better verification information.*


```solidity
function latestAnswer() public view virtual override returns (int256 answer);
```

### latestTimestamp

Reads the last updated height from aggregator delegated to.

*#[deprecated] Use latestRoundData instead. This does not error if no
answer has been reached, it will simply return 0. Either wait to point to
an already answered Aggregator or use the recommended latestRoundData
instead which includes better verification information.*


```solidity
function latestTimestamp() public view virtual override returns (uint256 updatedAt);
```

### getAnswer

get past rounds answers

*#[deprecated] Use getRoundData instead. This does not error if no
answer has been reached, it will simply return 0. Either wait to point to
an already answered Aggregator or use the recommended getRoundData
instead which includes better verification information.*


```solidity
function getAnswer(uint256 _roundId) public view virtual override returns (int256 answer);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`_roundId`|`uint256`|the answer number to retrieve the answer for|


### getTimestamp

get block timestamp when an answer was last updated

*#[deprecated] Use getRoundData instead. This does not error if no
answer has been reached, it will simply return 0. Either wait to point to
an already answered Aggregator or use the recommended getRoundData
instead which includes better verification information.*


```solidity
function getTimestamp(uint256 _roundId) public view virtual override returns (uint256 updatedAt);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`_roundId`|`uint256`|the answer number to retrieve the updated timestamp for|


### latestRound

get the latest completed round where the answer was updated. This
ID includes the proxy's phase, to make sure round IDs increase even when
switching to a newly deployed aggregator.

*#[deprecated] Use latestRoundData instead. This does not error if no
answer has been reached, it will simply return 0. Either wait to point to
an already answered Aggregator or use the recommended latestRoundData
instead which includes better verification information.*


```solidity
function latestRound() public view virtual override returns (uint256 roundId);
```

### getRoundData

get data about a round. Consumers are encouraged to check
that they're receiving fresh data by inspecting the updatedAt and
answeredInRound return values.
Note that different underlying implementations of AggregatorV3Interface_
have slightly different semantics for some of the return values. Consumers
should determine what implementations they expect to receive
data from and validate that they can properly handle return data from all
of them.

*Note that answer and updatedAt may change between queries.*


```solidity
function getRoundData(uint80 _roundId)
    public
    view
    virtual
    override
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`_roundId`|`uint80`|the requested round ID as presented through the proxy, this is made up of the aggregator's round ID with the phase ID encoded in the two highest order bytes|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`roundId`|`uint80`|is the round ID from the aggregator for which the data was retrieved combined with an phase to ensure that round IDs get larger as time moves forward.|
|`answer`|`int256`|is the answer for the given round|
|`startedAt`|`uint256`|is the timestamp when the round was started. (Only some AggregatorV3Interface_ implementations return meaningful values)|
|`updatedAt`|`uint256`|is the timestamp when the round last was updated (i.e. answer was last computed)|
|`answeredInRound`|`uint80`|is the round ID of the round in which the answer was computed. (Only some AggregatorV3Interface_ implementations return meaningful values)|


### latestRoundData

get data about the latest round. Consumers are encouraged to check
that they're receiving fresh data by inspecting the updatedAt and
answeredInRound return values.
Note that different underlying implementations of AggregatorV3Interface_
have slightly different semantics for some of the return values. Consumers
should determine what implementations they expect to receive
data from and validate that they can properly handle return data from all
of them.

*Note that answer and updatedAt may change between queries.*


```solidity
function latestRoundData()
    public
    view
    virtual
    override
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`roundId`|`uint80`|is the round ID from the aggregator for which the data was retrieved combined with an phase to ensure that round IDs get larger as time moves forward.|
|`answer`|`int256`|is the answer for the given round|
|`startedAt`|`uint256`|is the timestamp when the round was started. (Only some AggregatorV3Interface_ implementations return meaningful values)|
|`updatedAt`|`uint256`|is the timestamp when the round last was updated (i.e. answer was last computed)|
|`answeredInRound`|`uint80`|is the round ID of the round in which the answer was computed. (Only some AggregatorV3Interface_ implementations return meaningful values)|


### proposedGetRoundData

Used if an aggregator contract has been proposed.


```solidity
function proposedGetRoundData(uint80 _roundId)
    public
    view
    virtual
    hasProposal
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`_roundId`|`uint80`|the round ID to retrieve the round data for|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`roundId`|`uint80`|is the round ID for which data was retrieved|
|`answer`|`int256`|is the answer for the given round|
|`startedAt`|`uint256`|is the timestamp when the round was started. (Only some AggregatorV3Interface_ implementations return meaningful values)|
|`updatedAt`|`uint256`|is the timestamp when the round last was updated (i.e. answer was last computed)|
|`answeredInRound`|`uint80`|is the round ID of the round in which the answer was computed.|


### proposedLatestRoundData

Used if an aggregator contract has been proposed.


```solidity
function proposedLatestRoundData()
    public
    view
    virtual
    hasProposal
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`roundId`|`uint80`|is the round ID for which data was retrieved|
|`answer`|`int256`|is the answer for the given round|
|`startedAt`|`uint256`|is the timestamp when the round was started. (Only some AggregatorV3Interface_ implementations return meaningful values)|
|`updatedAt`|`uint256`|is the timestamp when the round last was updated (i.e. answer was last computed)|
|`answeredInRound`|`uint80`|is the round ID of the round in which the answer was computed.|


### aggregator

returns the current phase's aggregator address.


```solidity
function aggregator() external view returns (address);
```

### phaseId

returns the current phase's ID.


```solidity
function phaseId() external view returns (uint16);
```

### decimals

represents the number of decimals the aggregator responses represent.


```solidity
function decimals() external view override returns (uint8);
```

### version

the version number representing the type of aggregator the proxy
points to.


```solidity
function version() external view virtual override returns (uint256);
```

### description

returns the description of the aggregator the proxy points to.


```solidity
function description() external view virtual override returns (string memory);
```

### proposeAggregator

Allows the owner to propose a new address for the aggregator


```solidity
function proposeAggregator(address _aggregator) external onlyOwner;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`_aggregator`|`address`|The new address for the aggregator contract|


### confirmAggregator

Allows the owner to confirm and change the address
to the proposed aggregator

*Reverts if the given address doesn't match what was previously
proposed*


```solidity
function confirmAggregator(address _aggregator) external onlyOwner;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`_aggregator`|`address`|The new address for the aggregator contract|


### setAggregator


```solidity
function setAggregator(address _aggregator) internal;
```

### addPhase


```solidity
function addPhase(uint16 _phase, uint64 _originalId) internal pure returns (uint80);
```

### parseIds


```solidity
function parseIds(uint256 _roundId) internal pure returns (uint16, uint64);
```

### addPhaseIds


```solidity
function addPhaseIds(
    uint80 roundId,
    int256 answer,
    uint256 startedAt,
    uint256 updatedAt,
    uint80 answeredInRound,
    uint16 _phaseId
) internal pure returns (uint80, int256, uint256, uint256, uint80);
```

### hasProposal


```solidity
modifier hasProposal();
```

## Structs
### Phase

```solidity
struct Phase {
    uint16 id;
    AggregatorV2V3Interface aggregator;
}
```

