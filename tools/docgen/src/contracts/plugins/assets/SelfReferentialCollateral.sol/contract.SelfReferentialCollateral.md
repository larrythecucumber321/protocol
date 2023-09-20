# SelfReferentialCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/assets/SelfReferentialCollateral.sol)

**Inherits:**
[FiatCollateral](/tools/docgen/src/contracts/plugins/assets/FiatCollateral.sol/contract.FiatCollateral.md)

Collateral plugin for an unpegged collateral, such as wETH.
Expected: {tok} == {ref}, {ref} == {target}, {target} != {UoA}


## Functions
### constructor


```solidity
constructor(CollateralConfig memory config) FiatCollateral(config);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||


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


