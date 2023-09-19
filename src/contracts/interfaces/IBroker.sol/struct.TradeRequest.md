# TradeRequest
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IBroker.sol)

The data format that describes a request for trade with the Broker


```solidity
struct TradeRequest {
    IAsset sell;
    IAsset buy;
    uint256 sellAmount;
    uint256 minBuyAmount;
}
```

