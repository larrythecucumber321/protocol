# Mauction
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/GnosisMock.sol)


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

