# RevenueTraderP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/p0/RevenueTrader.sol)

**Inherits:**
[TradingP0](/tools/docgen/src/contracts/p0/mixins/Trading.sol/abstract.TradingP0.md), [IRevenueTrader](/tools/docgen/src/contracts/interfaces/IRevenueTrader.sol/interface.IRevenueTrader.md)

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

