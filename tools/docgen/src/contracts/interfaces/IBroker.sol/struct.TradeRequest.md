# TradeRequest
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IBroker.sol)

The data format that describes a request for trade with the Broker


```solidity
struct TradeRequest {
    IAsset sell;
    IAsset buy;
    uint256 sellAmount;
    uint256 minBuyAmount;
}
```

