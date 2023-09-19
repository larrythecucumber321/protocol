# TradeRequest
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IBroker.sol)

The data format that describes a request for trade with the Broker


```solidity
struct TradeRequest {
    IAsset sell;
    IAsset buy;
    uint256 sellAmount;
    uint256 minBuyAmount;
}
```

