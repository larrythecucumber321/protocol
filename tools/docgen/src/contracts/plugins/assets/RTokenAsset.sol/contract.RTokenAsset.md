# RTokenAsset
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/assets/RTokenAsset.sol)

**Inherits:**
[IAsset](/tools/docgen/src/contracts/interfaces/IAsset.sol/interface.IAsset.md)

Once an RToken gets large enough to get a price feed, replacing this asset with
a simpler one will do wonders for gas usage


## State Variables
### basketHandler

```solidity
IBasketHandler public immutable basketHandler;
```


### assetRegistry

```solidity
IAssetRegistry public immutable assetRegistry;
```


### backingManager

```solidity
IBackingManager public immutable backingManager;
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


## Functions
### constructor


```solidity
constructor(IRToken erc20_, uint192 maxTradeVolume_);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`erc20_`|`IRToken`||
|`maxTradeVolume_`|`uint192`|{UoA} The max trade volume, in UoA|


### tryPrice

Can revert, used by other contract functions in order to catch errors


```solidity
function tryPrice() external view virtual returns (uint192 low, uint192 high);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`low`|`uint192`|{UoA/tok} The low price estimate|
|`high`|`uint192`|{UoA/tok} The high price estimate|


### refresh


```solidity
function refresh() public virtual override;
```

### price

Should not revert


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


```solidity
function lotPrice() external view returns (uint192 lotLow, uint192 lotHigh);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`lotLow`|`uint192`|{UoA/tok} The lower end of the lot price estimate|
|`lotHigh`|`uint192`|{UoA/tok} The upper end of the lot price estimate|


### bal


```solidity
function bal(address account) external view returns (uint192);
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

### basketRange


```solidity
function basketRange() private view returns (BasketRange memory range);
```

