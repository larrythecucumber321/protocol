# GnosisAuctionData
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IGnosis.sol)


```solidity
struct GnosisAuctionData {
    IERC20 auctioningToken;
    IERC20 biddingToken;
    uint256 orderCancellationEndDate;
    uint256 auctionEndDate;
    bytes32 initialAuctionOrder;
    uint256 minimumBiddingAmountPerOrder;
    uint256 interimSumBidAmount;
    bytes32 interimOrder;
    bytes32 clearingPriceOrder;
    uint96 volumeClearingPriceOrder;
    bool minFundingThresholdNotReached;
    bool isAtomicClosureAllowed;
    uint256 feeNumerator;
    uint256 minFundingThreshold;
}
```

