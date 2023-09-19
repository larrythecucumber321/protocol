# Mauction
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/mocks/GnosisMock.sol)


```solidity
struct Mauction {
    address origin;
    IERC20 sell;
    IERC20 buy;
    uint256 sellAmount;
    uint256 minBuyAmount;
    uint256 startTime;
    uint256 endTime;
    MauctionStatus status;
    bytes32 encodedClearingOrder;
}
```

