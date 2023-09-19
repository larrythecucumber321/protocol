# ITrading
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/ITrading.sol)

**Inherits:**
[IComponent](/tools/docgen/src/contracts/interfaces/IComponent.sol/interface.IComponent.md), [IRewardableComponent](/tools/docgen/src/contracts/interfaces/IRewardable.sol/interface.IRewardableComponent.md)

Common events and refresher function for all Trading contracts


## Functions
### settleTrade

Settle a single trade, expected to be used with multicall for efficient mass settlement


```solidity
function settleTrade(IERC20 sell) external;
```

### maxTradeSlippage


```solidity
function maxTradeSlippage() external view returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{%} The maximum trade slippage acceptable|


### minTradeVolume


```solidity
function minTradeVolume() external view returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{UoA} The minimum trade volume in UoA, applies to all assets|


### trades


```solidity
function trades(IERC20 sell) external view returns (ITrade);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`ITrade`|The ongoing trade for a sell token, or the zero address|


### tradesOpen


```solidity
function tradesOpen() external view returns (uint48);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint48`|The number of ongoing trades open|


### mulDivCeil

Light wrapper around FixLib.mulDiv to support try-catch


```solidity
function mulDivCeil(uint192 x, uint192 y, uint192 z) external pure returns (uint192);
```

## Events
### MaxTradeSlippageSet

```solidity
event MaxTradeSlippageSet(uint192 indexed oldVal, uint192 indexed newVal);
```

### MinTradeVolumeSet

```solidity
event MinTradeVolumeSet(uint192 indexed oldVal, uint192 indexed newVal);
```

### TradeStarted
Emitted when a trade is started


```solidity
event TradeStarted(
    ITrade indexed trade, IERC20 indexed sell, IERC20 indexed buy, uint256 sellAmount, uint256 minBuyAmount
);
```

### TradeSettled
Emitted after a trade ends


```solidity
event TradeSettled(
    ITrade indexed trade, IERC20 indexed sell, IERC20 indexed buy, uint256 sellAmount, uint256 buyAmount
);
```

