# TradeRequest
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IBroker.sol)

The data format that describes a request for trade with the Broker


```solidity
struct TradeRequest {
    IAsset sell;
    IAsset buy;
    uint256 sellAmount;
    uint256 minBuyAmount;
}
```

