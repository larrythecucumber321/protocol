# OracleLib
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/assets/OracleLib.sol)

Used by asset plugins to price their collateral


## Functions
### price

*Use for on-the-fly calculations that should revert*


```solidity
function price(AggregatorV3Interface chainlinkFeed, uint48 timeout) internal view returns (uint192);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`chainlinkFeed`|`AggregatorV3Interface`||
|`timeout`|`uint48`|The number of seconds after which oracle values should be considered stale|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{UoA/tok}|


