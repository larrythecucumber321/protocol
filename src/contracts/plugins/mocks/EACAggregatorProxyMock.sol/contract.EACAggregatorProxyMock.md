# EACAggregatorProxyMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/mocks/EACAggregatorProxyMock.sol)

**Inherits:**
[EACAggregatorProxy](/src/contracts/plugins/mocks/EACAggregatorProxyMock.sol/contract.EACAggregatorProxy.md)


## State Variables
### version

```solidity
uint256 public constant override version = 0;
```


### __latestAnswer

```solidity
int256 public __latestAnswer;
```


### __latestTimestamp

```solidity
uint256 public __latestTimestamp;
```


### __latestRound

```solidity
uint256 public __latestRound;
```


### __latestAnsweredRound

```solidity
uint256 public __latestAnsweredRound;
```


### __getAnswer

```solidity
mapping(uint256 => int256) public __getAnswer;
```


### __getTimestamp

```solidity
mapping(uint256 => uint256) public __getTimestamp;
```


### __getStartedAt

```solidity
mapping(uint256 => uint256) private __getStartedAt;
```


### counter

```solidity
uint256 public counter;
```


## Functions
### constructor


```solidity
constructor(address _aggregator, address _accessController, int256 _initialAnswer)
    EACAggregatorProxy(_aggregator, _accessController);
```

### updateAnswer


```solidity
function updateAnswer(int256 _answer) public;
```

### updateRoundData


```solidity
function updateRoundData(uint80 _roundId, int256 _answer, uint256 _timestamp, uint256 _startedAt) public;
```

### getRoundData


```solidity
function getRoundData(uint80 _roundId)
    public
    view
    override
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
```

### latestRoundData


```solidity
function latestRoundData()
    public
    view
    virtual
    override
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
```

### description


```solidity
function description() external pure override returns (string memory);
```

