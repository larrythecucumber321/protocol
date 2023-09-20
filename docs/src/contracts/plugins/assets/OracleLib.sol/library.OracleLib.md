# OracleLib
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/OracleLib.sol)

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


