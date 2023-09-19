# AnkrStakedEthCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/assets/ankr/AnkrStakedEthCollateral.sol)

**Inherits:**
[AppreciatingFiatCollateral](/src/contracts/plugins/assets/AppreciatingFiatCollateral.sol/abstract.AppreciatingFiatCollateral.md)

Collateral plugin for Ankr ankrETH,
tok = ankrETH
ref = ETH
tar = ETH
UoA = USD


## Functions
### constructor


```solidity
constructor(CollateralConfig memory config, uint192 revenueHiding) AppreciatingFiatCollateral(config, revenueHiding);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||
|`revenueHiding`|`uint192`||


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


