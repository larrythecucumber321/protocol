# IAsset
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IAsset.sol)

**Inherits:**
[IRewardable](/tools/docgen/src/contracts/interfaces/IRewardable.sol/interface.IRewardable.md)

Supertype. Any token that interacts with our system must be wrapped in an asset,
whether it is used as RToken backing or not. Any token that can report a price in the UoA
is eligible to be an asset.


## Functions
### refresh

Refresh saved price
The Reserve protocol calls this at least once per transaction, before relying on
the Asset's other functions.

*Called immediately after deployment, before use*


```solidity
function refresh() external;
```

### price

Should not revert


```solidity
function price() external view returns (uint192 low, uint192 high);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`low`|`uint192`|{UoA/tok} The lower end of the price estimate|
|`high`|`uint192`|{UoA/tok} The upper end of the price estimate|


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


### erc20


```solidity
function erc20() external view returns (IERC20Metadata);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`IERC20Metadata`|The ERC20 contract of the token with decimals() available|


### erc20Decimals


```solidity
function erc20Decimals() external view returns (uint8);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint8`|The number of decimals in the ERC20; just for gas optimization|


### isCollateral


```solidity
function isCollateral() external view returns (bool);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|If the asset is an instance of ICollateral or not|


### maxTradeVolume


```solidity
function maxTradeVolume() external view returns (uint192);
```

