# FiatCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/FiatCollateral.sol)

**Inherits:**
[ICollateral](/tools/docgen/src/contracts/interfaces/IAsset.sol/interface.ICollateral.md), [Asset](/tools/docgen/src/contracts/plugins/assets/Asset.sol/contract.Asset.md)


## State Variables
### NEVER

```solidity
uint48 private constant NEVER = type(uint48).max;
```


### _whenDefault

```solidity
uint48 private _whenDefault = NEVER;
```


### delayUntilDefault

```solidity
uint48 public immutable delayUntilDefault;
```


### targetName

```solidity
bytes32 public immutable targetName;
```


### pegBottom

```solidity
uint192 public immutable pegBottom;
```


### pegTop

```solidity
uint192 public immutable pegTop;
```


## Functions
### constructor


```solidity
constructor(CollateralConfig memory config)
    Asset(
        config.priceTimeout,
        config.chainlinkFeed,
        config.oracleError,
        config.erc20,
        config.maxTradeVolume,
        config.oracleTimeout
    );
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||


### tryPrice

Can revert, used by other contract functions in order to catch errors
Should not return FIX_MAX for low
Should only return FIX_MAX for high if low is 0

*Override this when pricing is more complicated than just a single oracle*


```solidity
function tryPrice() external view virtual override returns (uint192 low, uint192 high, uint192 pegPrice);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`low`|`uint192`|{UoA/tok} The low price estimate|
|`high`|`uint192`|{UoA/tok} The high price estimate|
|`pegPrice`|`uint192`|{target/ref} The actual price observed in the peg|


### refresh

Should not revert
Refresh exchange rates and update default status.

*May need to override: limited to handling collateral with refPerTok() = 1*


```solidity
function refresh() public virtual override(Asset, IAsset);
```

### status


```solidity
function status() public view returns (CollateralStatus);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`CollateralStatus`|The collateral's status|


### markStatus


```solidity
function markStatus(CollateralStatus status_) internal;
```

### alreadyDefaulted


```solidity
function alreadyDefaulted() internal view returns (bool);
```

### whenDefault


```solidity
function whenDefault() external view returns (uint256);
```

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


### isCollateral


```solidity
function isCollateral() external pure virtual override(Asset, IAsset) returns (bool);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|If the asset is an instance of ICollateral or not|


