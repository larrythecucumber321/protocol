# TradingLibP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p0/mixins/TradingLib.sol)

P0 trade preparation functions
Users:
- BackingManager
- RTokenAsset
Interface:
1. prepareRecollateralizationTrade (external)
2. basketRange (internal)


## Functions
### prepareTradeSell

Prepare a trade to sell `trade.sellAmount` that guarantees a reasonable closing price,
without explicitly aiming at a particular quantity to purchase.


```solidity
function prepareTradeSell(TradeInfo memory trade, uint192 minTradeVolume, uint192 maxTradeSlippage)
    internal
    view
    returns (bool notDust, TradeRequest memory req);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`trade`|`TradeInfo`||
|`minTradeVolume`|`uint192`||
|`maxTradeSlippage`|`uint192`||

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`notDust`|`bool`|True when the trade is larger than the dust amount|
|`req`|`TradeRequest`|The prepared trade request to send to the Broker|


### prepareTradeToCoverDeficit

Assuming we have `trade.sellAmount` sell tokens available, prepare a trade to cover as
much of our deficit of `trade.buyAmount` buy tokens as possible, given expected trade
slippage and the sell asset's maxTradeVolume().


```solidity
function prepareTradeToCoverDeficit(TradeInfo memory trade, uint192 minTradeVolume, uint192 maxTradeSlippage)
    internal
    view
    returns (bool notDust, TradeRequest memory req);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`trade`|`TradeInfo`||
|`minTradeVolume`|`uint192`||
|`maxTradeSlippage`|`uint192`||

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`notDust`|`bool`|Whether the prepared trade is large enough to be worth trading|
|`req`|`TradeRequest`|The prepared trade request to send to the Broker|


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
function basketRange(TradingContext memory ctx, IERC20[] memory erc20s)
    internal
    view
    returns (BasketRange memory range);
```

### nextTradePair


```solidity
function nextTradePair(TradingContext memory ctx, IERC20[] memory erc20s, BasketRange memory range)
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


### isEnoughToSell


```solidity
function isEnoughToSell(IAsset asset, uint192 amt, uint192 price, uint192 minTradeVolume)
    internal
    view
    returns (bool);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`asset`|`IAsset`|The asset in consideration|
|`amt`|`uint192`|{tok} The number of whole tokens we plan to sell|
|`price`|`uint192`|{UoA/tok} The price to use for sizing|
|`minTradeVolume`|`uint192`|{UoA} The min trade volume, passed in for gas optimization|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|If amt is sufficiently large to be worth selling into our trading platforms|


### safeMulDivCeil


```solidity
function safeMulDivCeil(ITrading trader, uint192 x, uint192 y, uint192 z) internal pure returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|The result of FixLib.mulDiv bounded from above by FIX_MAX in the case of overflow|


### minTradeSize

Calculates the minTradeSize for an asset based on the given minTradeVolume and price


```solidity
function minTradeSize(uint192 minTradeVolume, uint192 price) private pure returns (uint192);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`minTradeVolume`|`uint192`|{UoA} The min trade volume, passed in for gas optimization|
|`price`|`uint192`||

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{tok} The min trade size for the asset in whole tokens|


### maxTradeSize

Calculates the maxTradeSize for an asset based on the asset's maxTradeVolume and price


```solidity
function maxTradeSize(IAsset asset, uint192 price) private view returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{tok} The max trade size for the asset in whole tokens|


## Structs
### TradingContext
Struct purposes:
1. Configure trading
2. Stay under stack limit with fewer vars
3. Cache information such as component addresses to save on gas


```solidity
struct TradingContext {
    BasketRange basketsHeld;
    IBackingManager bm;
    IBasketHandler bh;
    IAssetRegistry reg;
    IStRSR stRSR;
    IERC20 rsr;
    IRToken rToken;
    uint192 minTradeVolume;
    uint192 maxTradeSlippage;
}
```

### TradeInfo

```solidity
struct TradeInfo {
    IAsset sell;
    IAsset buy;
    uint192 sellAmount;
    uint192 buyAmount;
    uint192 sellPrice;
    uint192 buyPrice;
}
```

### MaxSurplusDeficit

```solidity
struct MaxSurplusDeficit {
    CollateralStatus surplusStatus;
    uint192 surplus;
    uint192 deficit;
}
```

