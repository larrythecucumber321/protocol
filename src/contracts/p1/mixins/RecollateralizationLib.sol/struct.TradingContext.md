# TradingContext
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/p1/mixins/RecollateralizationLib.sol)

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

