# CTokenNonFiatCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/compoundv2/CTokenNonFiatCollateral.sol)

**Inherits:**
[CTokenFiatCollateral](/tools/docgen/src/contracts/plugins/assets/compoundv2/CTokenFiatCollateral.sol/contract.CTokenFiatCollateral.md)

Collateral plugin for a cToken of nonfiat collateral that requires default checks,
like cWBTC. Expected: {tok} != {ref}, {ref} == {target}, {target} != {UoA}


## State Variables
### targetUnitChainlinkFeed

```solidity
AggregatorV3Interface public immutable targetUnitChainlinkFeed;
```


### targetUnitOracleTimeout

```solidity
uint48 public immutable targetUnitOracleTimeout;
```


## Functions
### constructor


```solidity
constructor(
    CollateralConfig memory config,
    AggregatorV3Interface targetUnitChainlinkFeed_,
    uint48 targetUnitOracleTimeout_,
    uint192 revenueHiding,
    IComptroller comptroller_
) CTokenFiatCollateral(config, revenueHiding, comptroller_);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||
|`targetUnitChainlinkFeed_`|`AggregatorV3Interface`|Feed units: {UoA/target}|
|`targetUnitOracleTimeout_`|`uint48`|{s} oracle timeout to use for targetUnitChainlinkFeed|
|`revenueHiding`|`uint192`|{1} A value like 1e-6 that represents the maximum refPerTok to hide|
|`comptroller_`|`IComptroller`|The CompoundFinance Comptroller|


### tryPrice

Can revert, used by other contract functions in order to catch errors


```solidity
function tryPrice() external view override returns (uint192 low, uint192 high, uint192 pegPrice);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`low`|`uint192`|{UoA/tok} The low price estimate|
|`high`|`uint192`|{UoA/tok} The high price estimate|
|`pegPrice`|`uint192`|{target/ref}|


