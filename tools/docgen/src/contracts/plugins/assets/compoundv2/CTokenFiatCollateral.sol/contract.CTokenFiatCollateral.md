# CTokenFiatCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/assets/compoundv2/CTokenFiatCollateral.sol)

**Inherits:**
[AppreciatingFiatCollateral](/tools/docgen/src/contracts/plugins/assets/AppreciatingFiatCollateral.sol/abstract.AppreciatingFiatCollateral.md)

Collateral plugin for a cToken of fiat collateral, like cUSDC or cUSDP
Expected: {tok} != {ref}, {ref} is pegged to {target} unless defaulting, {target} == {UoA}
Also used for FluxFinance


## State Variables
### referenceERC20Decimals

```solidity
uint8 public immutable referenceERC20Decimals;
```


### comptroller

```solidity
IComptroller public immutable comptroller;
```


## Functions
### constructor


```solidity
constructor(CollateralConfig memory config, uint192 revenueHiding, IComptroller comptroller_)
    AppreciatingFiatCollateral(config, revenueHiding);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||
|`revenueHiding`|`uint192`|{1} A value like 1e-6 that represents the maximum refPerTok to hide|
|`comptroller_`|`IComptroller`|The CompoundFinance Comptroller|


### refresh

Refresh exchange rates and update default status.


```solidity
function refresh() public virtual override;
```

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

*delegatecall*


```solidity
function claimRewards() external virtual override(Asset, IRewardable);
```

