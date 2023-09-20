# RTokenCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/RTokenCollateral.sol)

**Inherits:**
[RTokenAsset](/tools/docgen/src/contracts/plugins/assets/RTokenAsset.sol/contract.RTokenAsset.md), [ICollateral](/tools/docgen/src/contracts/interfaces/IAsset.sol/interface.ICollateral.md)

Plugin to use another RToken as collateral, without price feed
- {tok} = RToken
- {ref} = RToken (ideally we'd use the basket, but then refPerTok can fall)
- {target} = RToken's basket
Warning: This plugin is pretty gas-inefficient and it should be replaced with one that uses
a chainlink oracle ASAP. This is basically just for testing.
Stronger yet: This should not be used in a production system, period.


## State Variables
### NEVER

```solidity
uint256 internal constant NEVER = type(uint256).max;
```


### whenDefault

```solidity
uint256 public whenDefault = NEVER;
```


### delayUntilDefault

```solidity
uint48 public immutable delayUntilDefault;
```


### priceable

```solidity
bool public priceable;
```


### targetName

```solidity
bytes32 public immutable targetName;
```


## Functions
### constructor


```solidity
constructor(IRToken erc20_, uint192 maxTradeVolume_, bytes32 targetName_, uint48 delayUntilDefault_)
    RTokenAsset(erc20_, maxTradeVolume_);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`erc20_`|`IRToken`||
|`maxTradeVolume_`|`uint192`|{UoA} The max trade volume, in UoA|
|`targetName_`|`bytes32`||
|`delayUntilDefault_`|`uint48`||


### price

Should not revert


```solidity
function price() public view override(RTokenAsset, IAsset) returns (uint192 low, uint192 high);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`low`|`uint192`|{UoA/tok} The lower end of the price estimate|
|`high`|`uint192`|{UoA/tok} The upper end of the price estimate|


### refresh


```solidity
function refresh() public virtual override(RTokenAsset, IAsset);
```

### status


```solidity
function status() public view virtual override returns (CollateralStatus);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`CollateralStatus`|The collateral's status|


### isCollateral


```solidity
function isCollateral() external pure virtual override(RTokenAsset, IAsset) returns (bool);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|If the asset is an instance of ICollateral or not|


### refPerTok


```solidity
function refPerTok() public view virtual returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{ref/tok} Quantity of whole reference units per whole collateral tokens|


### targetPerRef


```solidity
function targetPerRef() public view virtual returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{target/ref} Quantity of whole target units per whole reference unit in the peg|


