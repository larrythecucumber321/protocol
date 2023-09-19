# TestIAsset
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IAsset.sol)

**Inherits:**
[IAsset](/src/contracts/interfaces/IAsset.sol/interface.IAsset.md)


## Functions
### chainlinkFeed


```solidity
function chainlinkFeed() external view returns (AggregatorV3Interface);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`AggregatorV3Interface`|The address of the chainlink feed|


### oracleError

{1} The max % deviation allowed by the oracle


```solidity
function oracleError() external view returns (uint192);
```

### oracleTimeout


```solidity
function oracleTimeout() external view returns (uint48);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint48`|{s} Seconds that an oracle value is considered valid|


### priceTimeout


```solidity
function priceTimeout() external view returns (uint48);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint48`|{s} Seconds that the lotPrice should decay over, after stale price|


