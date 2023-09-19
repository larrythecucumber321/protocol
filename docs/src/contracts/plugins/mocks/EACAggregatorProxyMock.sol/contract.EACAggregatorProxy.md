# EACAggregatorProxy
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/EACAggregatorProxyMock.sol)

**Inherits:**
[AggregatorProxy](/contracts/plugins/mocks/EACAggregatorProxyMock.sol/contract.AggregatorProxy.md)

A trusted proxy for updating where current answers are read from

This contract provides a consistent address for the
Aggregator and AggregatorV3Interface_ but delegates where it reads from to the owner, who is
trusted to update it.

Only access enabled addresses are allowed to access getters for
aggregated answers and round information.


## State Variables
### accessController

```solidity
AccessControllerInterface public accessController;
```


## Functions
### constructor


```solidity
constructor(address _aggregator, address _accessController) AggregatorProxy(_aggregator);
```

### setController

Allows the owner to update the accessController contract address.


```solidity
function setController(address _accessController) public onlyOwner;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`_accessController`|`address`|The new address for the accessController contract|


### latestAnswer

Reads the current answer from aggregator delegated to.

*overridden function to add the checkAccess() modifier*

*#[deprecated] Use latestRoundData instead. This does not error if no
answer has been reached, it will simply return 0. Either wait to point to
an already answered Aggregator or use the recommended latestRoundData
instead which includes better verification information.*


```solidity
function latestAnswer() public view override checkAccess returns (int256);
```

### latestTimestamp

get the latest completed round where the answer was updated. This
ID includes the proxy's phase, to make sure round IDs increase even when
switching to a newly deployed aggregator.

*#[deprecated] Use latestRoundData instead. This does not error if no
answer has been reached, it will simply return 0. Either wait to point to
an already answered Aggregator or use the recommended latestRoundData
instead which includes better verification information.*


```solidity
function latestTimestamp() public view override checkAccess returns (uint256);
```

### getAnswer

get past rounds answers

*overridden function to add the checkAccess() modifier*

*#[deprecated] Use getRoundData instead. This does not error if no
answer has been reached, it will simply return 0. Either wait to point to
an already answered Aggregator or use the recommended getRoundData
instead which includes better verification information.*


```solidity
function getAnswer(uint256 _roundId) public view override checkAccess returns (int256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`_roundId`|`uint256`|the answer number to retrieve the answer for|


### getTimestamp

get block timestamp when an answer was last updated

*overridden function to add the checkAccess() modifier*

*#[deprecated] Use getRoundData instead. This does not error if no
answer has been reached, it will simply return 0. Either wait to point to
an already answered Aggregator or use the recommended getRoundData
instead which includes better verification information.*


```solidity
function getTimestamp(uint256 _roundId) public view override checkAccess returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`_roundId`|`uint256`|the answer number to retrieve the updated timestamp for|


### latestRound

get the latest completed round where the answer was updated

*overridden function to add the checkAccess() modifier*

*#[deprecated] Use latestRoundData instead. This does not error if no
answer has been reached, it will simply return 0. Either wait to point to
an already answered Aggregator or use the recommended latestRoundData
instead which includes better verification information.*


```solidity
function latestRound() public view override checkAccess returns (uint256);
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
    checkAccess
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`_roundId`|`uint80`|the round ID to retrieve the round data for|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`roundId`|`uint80`|is the round ID from the aggregator for which the data was retrieved combined with a phase to ensure that round IDs get larger as time moves forward.|
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
    checkAccess
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`roundId`|`uint80`|is the round ID from the aggregator for which the data was retrieved combined with a phase to ensure that round IDs get larger as time moves forward.|
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
    override
    checkAccess
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
    override
    checkAccess
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


### checkAccess

*reverts if the caller does not have access by the accessController
contract or is the contract itself.*


```solidity
modifier checkAccess();
```

