# ATokenFiatCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/aave/ATokenFiatCollateral.sol)

**Inherits:**
[AppreciatingFiatCollateral](/contracts/plugins/assets/AppreciatingFiatCollateral.sol/abstract.AppreciatingFiatCollateral.md)

Collateral plugin for an aToken for a UoA-pegged asset, like aUSDC or a aUSDP
Expected: {tok} != {ref}, {ref} is pegged to {target} unless defaulting, {target} == {UoA}


## Functions
### constructor


```solidity
constructor(CollateralConfig memory config, uint192 revenueHiding) AppreciatingFiatCollateral(config, revenueHiding);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||
|`revenueHiding`|`uint192`|{1} A value like 1e-6 that represents the maximum refPerTok to hide|


### _underlyingRefPerTok


```solidity
function _underlyingRefPerTok() internal view override returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{ref/tok} Actual quantity of whole reference units per whole collateral tokens|


### claimRewards

Claim rewards earned by holding a balance of the ERC20 token

*Use delegatecall*


```solidity
function claimRewards() external virtual override(Asset, IRewardable);
```

