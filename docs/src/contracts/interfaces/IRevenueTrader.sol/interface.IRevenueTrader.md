# IRevenueTrader
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IRevenueTrader.sol)

**Inherits:**
[IComponent](/contracts/interfaces/IComponent.sol/interface.IComponent.md), [ITrading](/contracts/interfaces/ITrading.sol/interface.ITrading.md)

The RevenueTrader is an extension of the trading mixin that trades all
assets at its address for a single target asset. There are two runtime instances
of the RevenueTrader, 1 for RToken and 1 for RSR.


## Functions
### init


```solidity
function init(IMain main_, IERC20 tokenToBuy_, uint192 maxTradeSlippage_, uint192 minTradeVolume_) external;
```

### manageToken

Processes a single token; unpermissioned

*Intended to be used with multicall*


```solidity
function manageToken(IERC20 sell) external;
```
