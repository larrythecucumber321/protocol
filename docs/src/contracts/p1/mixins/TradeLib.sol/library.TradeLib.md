# TradeLib
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p1/mixins/TradeLib.sol)

An internal lib for preparing individual trades on particular asset pairs
Users:
- BackingManagerLib
- RevenueTrader


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


