# TradeInfo
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/p1/mixins/TradeLib.sol)


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

