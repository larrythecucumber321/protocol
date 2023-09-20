# Mauction
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/GnosisMock.sol)


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

