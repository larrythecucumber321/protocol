# TradingP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/p1/mixins/Trading.sol)

**Inherits:**
Multicall, [ComponentP1](/src/contracts/p1/mixins/Component.sol/abstract.ComponentP1.md), ReentrancyGuardUpgradeable, [ITrading](/src/contracts/interfaces/ITrading.sol/interface.ITrading.md)

Abstract trading mixin for all Traders, to be paired with TradingLib

*See docs/security for discussion of Multicall safety*


## State Variables
### MAX_TRADE_VOLUME

```solidity
uint192 public constant MAX_TRADE_VOLUME = 1e29;
```


### MAX_TRADE_SLIPPAGE

```solidity
uint192 public constant MAX_TRADE_SLIPPAGE = 1e18;
```


### broker

```solidity
IBroker private broker;
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


### __gap
*This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps*


```solidity
uint256[46] private __gap;
```


## Functions
### __Trading_init


```solidity
function __Trading_init(IMain main_, uint192 maxTradeSlippage_, uint192 minTradeVolume_) internal onlyInitializing;
```

### settleTrade

Settle a single trade, expected to be used with multicall for efficient mass settlement


```solidity
function settleTrade(IERC20 sell) external notPausedOrFrozen nonReentrant;
```

### claimRewards

Claim all rewards
Collective Action


```solidity
function claimRewards() external notPausedOrFrozen;
```

### claimRewardsSingle

Claim rewards for a single asset
Collective Action


```solidity
function claimRewardsSingle(IERC20 erc20) external notPausedOrFrozen;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`erc20`|`IERC20`|The ERC20 to claimRewards on|


### tryTrade

Try to initiate a trade with a trading partner provided by the broker


```solidity
function tryTrade(TradeRequest memory req) internal nonReentrant;
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

