# InvalidMockV3Aggregator
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/InvalidChainlinkMock.sol)

**Inherits:**
[MockV3Aggregator](/tools/docgen/src/contracts/plugins/mocks/ChainlinkMock.sol/contract.MockV3Aggregator.md)

Use this contract when you need to test our of gas errors
on Chainlink feeds


## State Variables
### simplyRevert

```solidity
bool public simplyRevert;
```


## Functions
### constructor


```solidity
constructor(uint8 _decimals, int256 _initialAnswer) MockV3Aggregator(_decimals, _initialAnswer);
```

### latestRoundData


```solidity
function latestRoundData()
    external
    view
    override
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRoundyarn);
```

### setSimplyRevert


```solidity
function setSimplyRevert(bool on) external;
```

### infiniteLoop


```solidity
function infiniteLoop() external pure;
```
