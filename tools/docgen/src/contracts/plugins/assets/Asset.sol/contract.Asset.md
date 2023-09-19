# Asset
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/assets/Asset.sol)

**Inherits:**
[IAsset](/tools/docgen/src/contracts/interfaces/IAsset.sol/interface.IAsset.md)


## State Variables
### chainlinkFeed

```solidity
AggregatorV3Interface public immutable chainlinkFeed;
```


### erc20

```solidity
IERC20Metadata public immutable erc20;
```


### erc20Decimals

```solidity
uint8 public immutable erc20Decimals;
```


### maxTradeVolume

```solidity
uint192 public immutable override maxTradeVolume;
```


### oracleTimeout

```solidity
uint48 public immutable oracleTimeout;
```


### oracleError

```solidity
uint192 public immutable oracleError;
```


### priceTimeout

```solidity
uint48 public immutable priceTimeout;
```


### savedLowPrice

```solidity
uint192 public savedLowPrice;
```


### savedHighPrice

```solidity
uint192 public savedHighPrice;
```


### lastSave

```solidity
uint48 public lastSave;
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
);
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

Can revert, used by other contract functions in order to catch errors
Should not return FIX_MAX for low
Should only return FIX_MAX for high if low is 0

*The third (unused) variable is only here for compatibility with Collateral*


```solidity
function tryPrice() external view virtual returns (uint192 low, uint192 high, uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`low`|`uint192`|{UoA/tok} The low price estimate|
|`high`|`uint192`|{UoA/tok} The high price estimate|
|`<none>`|`uint192`||


### refresh

Should not revert
Refresh saved prices


```solidity
function refresh() public virtual override;
```

### price

Should not revert

*Should be general enough to not need to be overridden*


```solidity
function price() public view virtual returns (uint192, uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{UoA/tok} The lower end of the price estimate|
|`<none>`|`uint192`|{UoA/tok} The upper end of the price estimate|


### lotPrice

Should not revert
lotLow should be nonzero when the asset might be worth selling

*Should be general enough to not need to be overridden*


```solidity
function lotPrice() external view virtual returns (uint192 lotLow, uint192 lotHigh);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`lotLow`|`uint192`|{UoA/tok} The lower end of the lot price estimate|
|`lotHigh`|`uint192`|{UoA/tok} The upper end of the lot price estimate|


### bal


```solidity
function bal(address account) external view virtual returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{tok} The balance of the ERC20 in whole tokens|


### isCollateral


```solidity
function isCollateral() external pure virtual returns (bool);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|If the asset is an instance of ICollateral or not|


### claimRewards

Claim rewards earned by holding a balance of the ERC20 token

*Use delegatecall*


```solidity
function claimRewards() external virtual;
```

