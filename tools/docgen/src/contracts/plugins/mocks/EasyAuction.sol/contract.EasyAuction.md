# EasyAuction
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/EasyAuction.sol)

**Inherits:**
[Ownable](/tools/docgen/src/contracts/plugins/mocks/vendor/EasyAuction.sol/abstract.Ownable.md)


## State Variables
### sellOrders

```solidity
mapping(uint256 => IterableOrderedOrderSet.Data) internal sellOrders;
```


### auctionData

```solidity
mapping(uint256 => AuctionData) public auctionData;
```


### auctionAccessManager

```solidity
mapping(uint256 => address) public auctionAccessManager;
```


### auctionAccessData

```solidity
mapping(uint256 => bytes) public auctionAccessData;
```


### registeredUsers

```solidity
IdToAddressBiMap.Data private registeredUsers;
```


### numUsers

```solidity
uint64 public numUsers;
```


### auctionCounter

```solidity
uint256 public auctionCounter;
```


### feeNumerator

```solidity
uint256 public feeNumerator = 0;
```


### FEE_DENOMINATOR

```solidity
uint256 public constant FEE_DENOMINATOR = 1000;
```


### feeReceiverUserId

```solidity
uint64 public feeReceiverUserId = 1;
```


## Functions
### atStageOrderPlacement


```solidity
modifier atStageOrderPlacement(uint256 auctionId);
```

### atStageOrderPlacementAndCancelation


```solidity
modifier atStageOrderPlacementAndCancelation(uint256 auctionId);
```

### atStageSolutionSubmission


```solidity
modifier atStageSolutionSubmission(uint256 auctionId);
```

### atStageFinished


```solidity
modifier atStageFinished(uint256 auctionId);
```

### constructor


```solidity
constructor() public Ownable;
```

### setFeeParameters


```solidity
function setFeeParameters(uint256 newFeeNumerator, address newfeeReceiverAddress) public onlyOwner;
```

### initiateAuction


```solidity
function initiateAuction(
    IERC20 _auctioningToken,
    IERC20 _biddingToken,
    uint256 orderCancellationEndDate,
    uint256 auctionEndDate,
    uint96 _auctionedSellAmount,
    uint96 _minBuyAmount,
    uint256 minimumBiddingAmountPerOrder,
    uint256 minFundingThreshold,
    bool isAtomicClosureAllowed,
    address accessManagerContract,
    bytes memory accessManagerContractData
) public returns (uint256);
```

### placeSellOrders


```solidity
function placeSellOrders(
    uint256 auctionId,
    uint96[] memory _minBuyAmounts,
    uint96[] memory _sellAmounts,
    bytes32[] memory _prevSellOrders,
    bytes calldata allowListCallData
) external atStageOrderPlacement(auctionId) returns (uint64 userId);
```

### placeSellOrdersOnBehalf


```solidity
function placeSellOrdersOnBehalf(
    uint256 auctionId,
    uint96[] memory _minBuyAmounts,
    uint96[] memory _sellAmounts,
    bytes32[] memory _prevSellOrders,
    bytes calldata allowListCallData,
    address orderSubmitter
) external atStageOrderPlacement(auctionId) returns (uint64 userId);
```

### _placeSellOrders


```solidity
function _placeSellOrders(
    uint256 auctionId,
    uint96[] memory _minBuyAmounts,
    uint96[] memory _sellAmounts,
    bytes32[] memory _prevSellOrders,
    bytes calldata allowListCallData,
    address orderSubmitter
) internal returns (uint64 userId);
```

### cancelSellOrders


```solidity
function cancelSellOrders(uint256 auctionId, bytes32[] memory _sellOrders)
    public
    atStageOrderPlacementAndCancelation(auctionId);
```

### precalculateSellAmountSum


```solidity
function precalculateSellAmountSum(uint256 auctionId, uint256 iterationSteps)
    public
    atStageSolutionSubmission(auctionId);
```

### settleAuctionAtomically


```solidity
function settleAuctionAtomically(
    uint256 auctionId,
    uint96[] memory _minBuyAmount,
    uint96[] memory _sellAmount,
    bytes32[] memory _prevSellOrder,
    bytes calldata allowListCallData
) public atStageSolutionSubmission(auctionId);
```

### settleAuction


```solidity
function settleAuction(uint256 auctionId) public atStageSolutionSubmission(auctionId) returns (bytes32 clearingOrder);
```

### claimFromParticipantOrder


```solidity
function claimFromParticipantOrder(uint256 auctionId, bytes32[] memory orders)
    public
    atStageFinished(auctionId)
    returns (uint256 sumAuctioningTokenAmount, uint256 sumBiddingTokenAmount);
```

### processFeesAndAuctioneerFunds


```solidity
function processFeesAndAuctioneerFunds(
    uint256 auctionId,
    uint256 fillVolumeOfAuctioneerOrder,
    uint64 auctioneerId,
    uint96 fullAuctionedAmount
) internal;
```

### sendOutTokens


```solidity
function sendOutTokens(uint256 auctionId, uint256 auctioningTokenAmount, uint256 biddingTokenAmount, uint64 userId)
    internal;
```

### registerUser


```solidity
function registerUser(address user) public returns (uint64 userId);
```

### getUserId


```solidity
function getUserId(address user) public returns (uint64 userId);
```

### getSecondsRemainingInBatch


```solidity
function getSecondsRemainingInBatch(uint256 auctionId) public view returns (uint256);
```

### containsOrder


```solidity
function containsOrder(uint256 auctionId, bytes32 order) public view returns (bool);
```

## Events
### NewSellOrder

```solidity
event NewSellOrder(uint256 indexed auctionId, uint64 indexed userId, uint96 buyAmount, uint96 sellAmount);
```

### CancellationSellOrder

```solidity
event CancellationSellOrder(uint256 indexed auctionId, uint64 indexed userId, uint96 buyAmount, uint96 sellAmount);
```

### ClaimedFromOrder

```solidity
event ClaimedFromOrder(uint256 indexed auctionId, uint64 indexed userId, uint96 buyAmount, uint96 sellAmount);
```

### NewUser

```solidity
event NewUser(uint64 indexed userId, address indexed userAddress);
```

### NewAuction

```solidity
event NewAuction(
    uint256 indexed auctionId,
    IERC20 indexed _auctioningToken,
    IERC20 indexed _biddingToken,
    uint256 orderCancellationEndDate,
    uint256 auctionEndDate,
    uint64 userId,
    uint96 _auctionedSellAmount,
    uint96 _minBuyAmount,
    uint256 minimumBiddingAmountPerOrder,
    uint256 minFundingThreshold,
    address allowListContract,
    bytes allowListData
);
```

### AuctionCleared

```solidity
event AuctionCleared(
    uint256 indexed auctionId, uint96 soldAuctioningTokens, uint96 soldBiddingTokens, bytes32 clearingPriceOrder
);
```

### UserRegistration

```solidity
event UserRegistration(address indexed user, uint64 userId);
```

## Structs
### AuctionData

```solidity
struct AuctionData {
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

