# GnosisMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/GnosisMock.sol)

**Inherits:**
[IGnosis](/contracts/interfaces/IGnosis.sol/interface.IGnosis.md), [IBiddable](/contracts/plugins/mocks/GnosisMock.sol/interface.IBiddable.md)

A very simple trading partner that only supports 1 bid per auction, without fees
It does not mimic the behavior of EasyAuction directly


## State Variables
### feeNumerator

```solidity
uint256 public constant feeNumerator = 0;
```


### auctions

```solidity
Mauction[] public auctions;
```


### bids

```solidity
mapping(uint256 => Bid) public bids;
```


## Functions
### initiateAuction


```solidity
function initiateAuction(
    IERC20 auctioningToken,
    IERC20 biddingToken,
    uint256,
    uint256 auctionEndDate,
    uint96 auctionedSellAmount,
    uint96 minBuyAmount,
    uint256,
    uint256,
    bool,
    address,
    bytes memory
) external virtual returns (uint256 auctionId);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`auctionId`|`uint256`|The internal auction id|


### placeBid

*Requires allowances*


```solidity
function placeBid(uint256 auctionId, Bid memory bid) external;
```

### settleAuction

Can only be called by the origin of the auction and only after auction.endTime is past


```solidity
function settleAuction(uint256 auctionId) external virtual returns (bytes32 encodedOrder);
```

### auctionData


```solidity
function auctionData(uint256 auctionId) external view returns (GnosisAuctionData memory data);
```

### numAuctions


```solidity
function numAuctions() external view returns (uint256);
```

### _encodeOrder


```solidity
function _encodeOrder(uint256 userId, uint256 sellAmount, uint256 buyAmount) internal pure returns (bytes32);
```

