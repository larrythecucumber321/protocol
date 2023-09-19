# UnpricedAssetMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/UnpricedPlugins.sol)

**Inherits:**
[Asset](/tools/docgen/src/contracts/plugins/assets/Asset.sol/contract.Asset.md)


## State Variables
### unpriced

```solidity
bool public unpriced = false;
```


## Functions
### constructor


```solidity
constructor(
    uint48 priceTimeout_,
    AggregatorV3Interface chainlinkFeed_,
    uint192 oracleError_,
    IERC20Metadata erc20_,
    uint192 maxTradeVolume_,
    uint48 oracleTimeout_
) Asset(priceTimeout_, chainlinkFeed_, oracleError_, erc20_, maxTradeVolume_, oracleTimeout_);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`priceTimeout_`|`uint48`|{s} The number of seconds over which savedHighPrice decays to 0|
|`chainlinkFeed_`|`AggregatorV3Interface`|Feed units: {UoA/tok}|
|`oracleError_`|`uint192`|{1} The % the oracle feed can be off by|
|`erc20_`|`IERC20Metadata`||
|`maxTradeVolume_`|`uint192`|{UoA} The max trade volume, in UoA|
|`oracleTimeout_`|`uint48`|{s} The number of seconds until a oracle value becomes invalid|


### tryPrice

tryPrice: mock unpriced by returning (0, FIX_MAX)


```solidity
function tryPrice() external view override returns (uint192 low, uint192 high, uint192);
```

### setUnpriced


```solidity
function setUnpriced(bool on) external;
```

