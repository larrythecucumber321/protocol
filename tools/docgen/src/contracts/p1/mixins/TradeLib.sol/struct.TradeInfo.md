# TradeInfo
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/p1/mixins/TradeLib.sol)


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

