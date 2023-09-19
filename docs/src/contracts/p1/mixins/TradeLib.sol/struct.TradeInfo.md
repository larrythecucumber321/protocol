# TradeInfo
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p1/mixins/TradeLib.sol)


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

