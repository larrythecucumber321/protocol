# LidoStakedEthCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/lido/LidoStakedEthCollateral.sol)

**Inherits:**
[AppreciatingFiatCollateral](/contracts/plugins/assets/AppreciatingFiatCollateral.sol/abstract.AppreciatingFiatCollateral.md)

Collateral plugin for Lido stETH,
tok = wstETH  (wrapped stETH)
ref = stETH (pegged to ETH 1:1)
tar = ETH
UoA = USD


## State Variables
### targetPerRefChainlinkFeed

```solidity
AggregatorV3Interface public immutable targetPerRefChainlinkFeed;
```


### targetPerRefChainlinkTimeout

```solidity
uint48 public immutable targetPerRefChainlinkTimeout;
```


## Functions
### constructor


```solidity
constructor(
    CollateralConfig memory config,
    uint192 revenueHiding,
    AggregatorV3Interface _targetPerRefChainlinkFeed,
    uint48 _targetPerRefChainlinkTimeout
) AppreciatingFiatCollateral(config, revenueHiding);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||
|`revenueHiding`|`uint192`||
|`_targetPerRefChainlinkFeed`|`AggregatorV3Interface`||
|`_targetPerRefChainlinkTimeout`|`uint48`||


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


