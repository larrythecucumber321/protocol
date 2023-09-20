# TradingContext
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p1/mixins/RecollateralizationLib.sol)

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
