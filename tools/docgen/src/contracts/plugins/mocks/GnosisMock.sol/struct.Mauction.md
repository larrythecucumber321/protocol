# Mauction
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/mocks/GnosisMock.sol)


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

