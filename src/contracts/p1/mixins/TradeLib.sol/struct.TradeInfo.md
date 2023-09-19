# TradeInfo
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/p1/mixins/TradeLib.sol)


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

