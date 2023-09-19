# CvxStableMetapoolCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/assets/convex/CvxStableMetapoolCollateral.sol)

**Inherits:**
[CvxStableCollateral](/tools/docgen/src/contracts/plugins/assets/convex/CvxStableCollateral.sol/contract.CvxStableCollateral.md)


## State Variables
### metapoolToken

```solidity
ICurveMetaPool public immutable metapoolToken;
```


### pairedToken

```solidity
IERC20Metadata public immutable pairedToken;
```


### pairedTokenPegBottom

```solidity
uint192 public immutable pairedTokenPegBottom;
```


### pairedTokenPegTop

```solidity
uint192 public immutable pairedTokenPegTop;
```


## Functions
### constructor

*config.chainlinkFeed/oracleError/oracleTimeout should be set for paired token*

*config.erc20 should be a IConvexStakingWrapper*


```solidity
constructor(
    CollateralConfig memory config,
    uint192 revenueHiding,
    PTConfiguration memory ptConfig,
    ICurveMetaPool metapoolToken_,
    uint192 pairedTokenDefaultThreshold_
) CvxStableCollateral(config, revenueHiding, ptConfig);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||
|`revenueHiding`|`uint192`||
|`ptConfig`|`PTConfiguration`||
|`metapoolToken_`|`ICurveMetaPool`||
|`pairedTokenDefaultThreshold_`|`uint192`||


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


### tryPairedPrice

Can revert, used by `_anyDepeggedOutsidePool()`
Should not return FIX_MAX for low
Should only return FIX_MAX for high if low is 0


```solidity
function tryPairedPrice() public view virtual returns (uint192 lowPaired, uint192 highPaired);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`lowPaired`|`uint192`|{UoA/pairedTok} The low price estimate of the paired token|
|`highPaired`|`uint192`|{UoA/pairedTok} The high price estimate of the paired token|


### _underlyingRefPerTok


```solidity
function _underlyingRefPerTok() internal view override returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{ref/tok} Actual quantity of whole reference units per whole collateral tokens|


### _anyDepeggedOutsidePool


```solidity
function _anyDepeggedOutsidePool() internal view virtual override returns (bool);
```

### _metapoolBalancesValue


```solidity
function _metapoolBalancesValue(uint192 lowPaired, uint192 highPaired)
    internal
    view
    returns (uint192 aumLow, uint192 aumHigh);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`lowPaired`|`uint192`|{UoA/pairedTok}|
|`highPaired`|`uint192`|{UoA/pairedTok}|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`aumLow`|`uint192`|{UoA}|
|`aumHigh`|`uint192`|{UoA}|


