# AppreciatingFiatCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/AppreciatingFiatCollateral.sol)

**Inherits:**
[FiatCollateral](/tools/docgen/src/contracts/plugins/assets/FiatCollateral.sol/contract.FiatCollateral.md)


## State Variables
### revenueShowing

```solidity
uint192 public immutable revenueShowing;
```


### exposedReferencePrice

```solidity
uint192 public exposedReferencePrice;
```


## Functions
### constructor


```solidity
constructor(CollateralConfig memory config, uint192 revenueHiding) FiatCollateral(config);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||
|`revenueHiding`|`uint192`|{1} A value like 1e-6 that represents the maximum refPerTok to hide|


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

*Should not need to override: can handle collateral with variable refPerTok()*


```solidity
function refresh() public virtual override;
```

### refPerTok


```solidity
function refPerTok() public view virtual override returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{ref/tok} Exposed quantity of whole reference units per whole collateral tokens|


### _underlyingRefPerTok

Should update in inheritors


```solidity
function _underlyingRefPerTok() internal view virtual returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{ref/tok} Actual quantity of whole reference units per whole collateral tokens|


