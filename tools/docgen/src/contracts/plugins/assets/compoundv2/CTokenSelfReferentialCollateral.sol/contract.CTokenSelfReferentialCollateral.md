# CTokenSelfReferentialCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/assets/compoundv2/CTokenSelfReferentialCollateral.sol)

**Inherits:**
[AppreciatingFiatCollateral](/tools/docgen/src/contracts/plugins/assets/AppreciatingFiatCollateral.sol/abstract.AppreciatingFiatCollateral.md)

Collateral plugin for a cToken of unpegged collateral, such as cETH.
Expected: {tok} != {ref}, {ref} == {target}, {target} != {UoA}


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
constructor(
    CollateralConfig memory config,
    uint192 revenueHiding,
    uint8 referenceERC20Decimals_,
    IComptroller comptroller_
) AppreciatingFiatCollateral(config, revenueHiding);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||
|`revenueHiding`|`uint192`|{1} A value like 1e-6 that represents the maximum refPerTok to hide|
|`referenceERC20Decimals_`|`uint8`|The number of decimals in the reference token|
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

