# NonFiatCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/NonFiatCollateral.sol)

**Inherits:**
[FiatCollateral](/tools/docgen/src/contracts/plugins/assets/FiatCollateral.sol/contract.FiatCollateral.md)

Collateral plugin for a nonfiat collateral that requires default checks, such as WBTC.
Expected: {tok} == {ref}, {ref} is pegged to {target} or defaulting, {target} != {UoA}


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
    uint48 targetUnitOracleTimeout_
) FiatCollateral(config);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||
|`targetUnitChainlinkFeed_`|`AggregatorV3Interface`|Feed units: {UoA/target}|
|`targetUnitOracleTimeout_`|`uint48`|{s} oracle timeout to use for targetUnitChainlinkFeed|


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


