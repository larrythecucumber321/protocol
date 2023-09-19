# RecollateralizationLibP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/p1/mixins/RecollateralizationLib.sol)

An informal extension of the Trading mixin that provides trade preparation views
Users:
- BackingManager
- RTokenAsset
Interface:
1. prepareRecollateralizationTrade (external)
2. basketRange (internal)


## Functions
### prepareRecollateralizationTrade

Select and prepare a trade that moves us closer to capitalization, using the
basket range to avoid overeager/duplicate trading.


```solidity
function prepareRecollateralizationTrade(IBackingManager bm, BasketRange memory basketsHeld)
    external
    view
    returns (bool doTrade, TradeRequest memory req);
```

### basketRange


```solidity
function basketRange(TradingContext memory ctx, Registry memory reg) internal view returns (BasketRange memory range);
```

### nextTradePair


```solidity
function nextTradePair(TradingContext memory ctx, Registry memory reg, BasketRange memory range)
    private
    view
    returns (TradeInfo memory trade);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`trade`|`TradeInfo`|trade sell: Surplus collateral OR address(0) deficit Deficit collateral OR address(0) sellAmount {sellTok} Surplus amount (whole tokens) buyAmount {buyTok} Deficit amount (whole tokens) sellPrice {UoA/sellTok} The worst-case price of the sell token on secondary markets buyPrice {UoA/sellTok} The worst-case price of the buy token on secondary markets|


### isBetterSurplus


```solidity
function isBetterSurplus(MaxSurplusDeficit memory curr, CollateralStatus other, uint192 surplusAmt)
    private
    pure
    returns (bool);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`curr`|`MaxSurplusDeficit`|The current MaxSurplusDeficit containing the best surplus so far|
|`other`|`CollateralStatus`|The collateral status of the asset in consideration|
|`surplusAmt`|`uint192`|{UoA} The amount by which the asset in consideration is in surplus|


## Structs
### MaxSurplusDeficit

```solidity
struct MaxSurplusDeficit {
    CollateralStatus surplusStatus;
    uint192 surplus;
    uint192 deficit;
}
```

