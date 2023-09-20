# SFraxEthCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/assets/frax-eth/SFraxEthCollateral.sol)

**Inherits:**
[AppreciatingFiatCollateral](/tools/docgen/src/contracts/plugins/assets/AppreciatingFiatCollateral.sol/abstract.AppreciatingFiatCollateral.md)

Collateral plugin for Frax-ETH,
tok = sfrxETH
ref = frxETH
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


