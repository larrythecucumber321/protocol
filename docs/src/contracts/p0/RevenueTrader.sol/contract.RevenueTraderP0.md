# RevenueTraderP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p0/RevenueTrader.sol)

**Inherits:**
[TradingP0](/contracts/p0/mixins/Trading.sol/abstract.TradingP0.md), [IRevenueTrader](/contracts/interfaces/IRevenueTrader.sol/interface.IRevenueTrader.md)

Trader Component that converts all asset balances at its address to a
single target asset and sends this asset to the Distributor.


## State Variables
### tokenToBuy

```solidity
IERC20 public tokenToBuy;
```


## Functions
### init


```solidity
function init(IMain main_, IERC20 tokenToBuy_, uint192 maxTradeSlippage_, uint192 minTradeVolume_) public initializer;
```

### manageToken

Processes a single token; unpermissioned

*Intended to be used with multicall*


```solidity
function manageToken(IERC20 erc20) external notPausedOrFrozen;
```
