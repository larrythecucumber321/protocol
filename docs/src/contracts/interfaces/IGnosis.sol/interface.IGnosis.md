# IGnosis
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IGnosis.sol)

The relevant portion of the interface of the live Gnosis EasyAuction contract
https://github.com/gnosis/ido-contracts/blob/main/contracts/EasyAuction.sol


## Functions
### initiateAuction


```solidity
function initiateAuction(
    IERC20 auctioningToken,
    IERC20 biddingToken,
    uint256 orderCancellationEndDate,
    uint256 auctionEndDate,
    uint96 auctionedSellAmount,
    uint96 minBuyAmount,
    uint256 minimumBiddingAmountPerOrder,
    uint256 minFundingThreshold,
    bool isAtomicClosureAllowed,
    address accessManagerContract,
    bytes memory accessManagerContractData
) external returns (uint256 auctionId);
```

### auctionData


```solidity
function auctionData(uint256 auctionId) external view returns (GnosisAuctionData memory);
```

### settleAuction

*See here for decoding: https://git.io/JMang*


```solidity
function settleAuction(uint256 auctionId) external returns (bytes32 encodedOrder);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`auctionId`|`uint256`|The external auction id|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`encodedOrder`|`bytes32`|The order, encoded in a bytes 32|


### feeNumerator


```solidity
function feeNumerator() external returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The numerator over a 1000-valued denominator|


