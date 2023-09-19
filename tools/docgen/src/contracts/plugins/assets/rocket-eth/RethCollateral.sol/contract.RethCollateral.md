# RethCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/rocket-eth/RethCollateral.sol)

**Inherits:**
[AppreciatingFiatCollateral](/tools/docgen/src/contracts/plugins/assets/AppreciatingFiatCollateral.sol/abstract.AppreciatingFiatCollateral.md)

Collateral plugin for Rocket-Pool ETH,
tok = rETH
ref = ETH
tar = ETH
UoA = USD


## State Variables
### refPerTokChainlinkFeed

```solidity
AggregatorV3Interface public immutable refPerTokChainlinkFeed;
```


### refPerTokChainlinkTimeout

```solidity
uint48 public immutable refPerTokChainlinkTimeout;
```


## Functions
### constructor


```solidity
constructor(
    CollateralConfig memory config,
    uint192 revenueHiding,
    AggregatorV3Interface _refPerTokChainlinkFeed,
    uint48 _refPerTokChainlinkTimeout
) AppreciatingFiatCollateral(config, revenueHiding);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||
|`revenueHiding`|`uint192`||
|`_refPerTokChainlinkFeed`|`AggregatorV3Interface`||
|`_refPerTokChainlinkTimeout`|`uint48`||


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
|`pegPrice`|`uint192`|{target/ref} The actual price observed in the peg|


### _underlyingRefPerTok


```solidity
function _underlyingRefPerTok() internal view override returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{ref/tok} Quantity of whole reference units per whole collateral tokens|


