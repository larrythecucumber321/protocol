# MockV3Aggregator
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/mocks/ChainlinkMock.sol)

**Inherits:**
AggregatorV3Interface

Based on the FluxAggregator contract

Use this contract when you need to test
other contract's ability to read data from an
aggregator contract, but how the aggregator got
its answer is unimportant
Credit: https://betterprogramming.pub/how-to-mock-chainlink-vrf-coordinator-v2-and-aggregator-v3-with-truffle-0-8-0-24353b96858e


## State Variables
### version

```solidity
uint256 public constant override version = 0;
```


### decimals

```solidity
uint8 public override decimals;
```


### latestAnswer

```solidity
int256 public latestAnswer;
```


### latestTimestamp

```solidity
uint256 public latestTimestamp;
```


### latestRound

```solidity
uint256 public latestRound;
```


### latestAnsweredRound

```solidity
uint256 public latestAnsweredRound;
```


### getAnswer

```solidity
mapping(uint256 => int256) public getAnswer;
```


### getTimestamp

```solidity
mapping(uint256 => uint256) public getTimestamp;
```


### getStartedAt

```solidity
mapping(uint256 => uint256) private getStartedAt;
```


## Functions
### constructor


```solidity
constructor(uint8 _decimals, int256 _initialAnswer);
```

### updateAnswer


```solidity
function updateAnswer(int256 _answer) public;
```

### setInvalidTimestamp


```solidity
function setInvalidTimestamp() public;
```

### setInvalidAnsweredRound


```solidity
function setInvalidAnsweredRound() public;
```

### updateRoundData


```solidity
function updateRoundData(uint80 _roundId, int256 _answer, uint256 _timestamp, uint256 _startedAt) public;
```

### getRoundData


```solidity
function getRoundData(uint80 _roundId)
    external
    view
    override
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
```

### latestRoundData


```solidity
function latestRoundData()
    external
    view
    virtual
    override
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
```

### description


```solidity
function description() external pure override returns (string memory);
```

