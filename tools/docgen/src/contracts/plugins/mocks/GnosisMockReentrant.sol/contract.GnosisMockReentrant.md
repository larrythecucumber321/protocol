# GnosisMockReentrant
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/GnosisMockReentrant.sol)

**Inherits:**
[GnosisMock](/tools/docgen/src/contracts/plugins/mocks/GnosisMock.sol/contract.GnosisMock.md)

A Gnosis Mock that attemts to reenter on initiateAuction


## State Variables
### reenterOnInit

```solidity
bool public reenterOnInit;
```


### reenterOnSettle

```solidity
bool public reenterOnSettle;
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
) external override returns (uint256 auctionId);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`auctionId`|`uint256`|The internal auction id|


### settleAuction

Can only be called by the origin of the auction and only after auction.endTime is past


```solidity
function settleAuction(uint256 auctionId) external override returns (bytes32 encodedOrder);
```

### setReenterOnInit


```solidity
function setReenterOnInit(bool value) external;
```

### setReenterOnSettle


```solidity
function setReenterOnSettle(bool value) external;
```
