# TradingP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p0/mixins/Trading.sol)

**Inherits:**
[RewardableP0](/tools/docgen/src/contracts/p0/mixins/Rewardable.sol/abstract.RewardableP0.md), [ITrading](/tools/docgen/src/contracts/interfaces/ITrading.sol/interface.ITrading.md)

Abstract trading mixin for all Traders, to be paired with TradingLib


## State Variables
### MAX_TRADE_VOLUME

```solidity
uint192 public constant MAX_TRADE_VOLUME = 1e29;
```


### MAX_TRADE_SLIPPAGE

```solidity
uint192 public constant MAX_TRADE_SLIPPAGE = 1e18;
```


### trades

```solidity
mapping(IERC20 => ITrade) public trades;
```


### tradesOpen

```solidity
uint48 public tradesOpen;
```


### maxTradeSlippage

```solidity
uint192 public maxTradeSlippage;
```


### minTradeVolume

```solidity
uint192 public minTradeVolume;
```


## Functions
### __Trading_init


```solidity
function __Trading_init(uint192 maxTradeSlippage_, uint192 minTradeVolume_) internal onlyInitializing;
```

### settleTrade

Settle a single trade, expected to be used with multicall for efficient mass settlement


```solidity
function settleTrade(IERC20 sell) public notPausedOrFrozen;
```

### tryTrade

Try to initiate a trade with a trading partner provided by the broker


```solidity
function tryTrade(TradeRequest memory req) internal;
```

### setMaxTradeSlippage


```solidity
function setMaxTradeSlippage(uint192 val) public governance;
```

### setMinTradeVolume


```solidity
function setMinTradeVolume(uint192 val) public governance;
```

### mulDivCeil

Light wrapper around FixLib.mulDiv to support try-catch


```solidity
function mulDivCeil(uint192 x, uint192 y, uint192 z) external pure returns (uint192);
```

