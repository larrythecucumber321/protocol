# CvxStableRTokenMetapoolCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/convex/CvxStableRTokenMetapoolCollateral.sol)

**Inherits:**
[CvxStableMetapoolCollateral](/tools/docgen/src/contracts/plugins/assets/convex/CvxStableMetapoolCollateral.sol/contract.CvxStableMetapoolCollateral.md)


## State Variables
### pairedAssetRegistry

```solidity
IAssetRegistry internal immutable pairedAssetRegistry;
```


## Functions
### constructor

*config.chainlinkFeed/oracleError/oracleTimeout are unused; set chainlinkFeed to 0x1*

*config.erc20 should be a IConvexStakingWrapper*


```solidity
constructor(
    CollateralConfig memory config,
    uint192 revenueHiding,
    PTConfiguration memory ptConfig,
    ICurveMetaPool metapoolToken_,
    uint192 pairedTokenDefaultThreshold_
) CvxStableMetapoolCollateral(config, revenueHiding, ptConfig, metapoolToken_, pairedTokenDefaultThreshold_);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||
|`revenueHiding`|`uint192`||
|`ptConfig`|`PTConfiguration`||
|`metapoolToken_`|`ICurveMetaPool`||
|`pairedTokenDefaultThreshold_`|`uint192`||


### tryPairedPrice

Can revert, used by `_anyDepeggedOutsidePool()`
Should not return FIX_MAX for low


```solidity
function tryPairedPrice() public view virtual override returns (uint192 lowPaired, uint192 highPaired);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`lowPaired`|`uint192`|{UoA/pairedTok} The low price estimate of the paired token|
|`highPaired`|`uint192`|{UoA/pairedTok} The high price estimate of the paired token|


