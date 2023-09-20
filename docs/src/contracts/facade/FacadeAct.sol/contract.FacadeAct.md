# FacadeAct
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/facade/FacadeAct.sol)

**Inherits:**
[IFacadeAct](/contracts/interfaces/IFacadeAct.sol/interface.IFacadeAct.md)

A UX-friendly layer for non-governance protocol interactions


## Functions
### getActCalldata

Returns the next call a keeper of MEV searcher should make in order to progress the system
Returns zero bytes to indicate no action should be made

*This function begins reverting due to blocksize constraints at ~400 registered assets*


```solidity
function getActCalldata(RTokenP1 rToken) external returns (address, bytes memory);
```

### claimRewards


```solidity
function claimRewards(RTokenP1 rToken) public;
```

### minTradeSize

Calculates the minTradeSize for an asset based on the given minTradeVolume and price


```solidity
function minTradeSize(uint192 minTradeVolume, uint192 price) private pure returns (uint192);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`minTradeVolume`|`uint192`|{UoA} The min trade volume, passed in for gas optimization|
|`price`|`uint192`||

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{tok} The min trade size for the asset in whole tokens|


### canRunRecollateralizationAuctions

To use this, call via callStatic.
If canStart is true, proceed to runRecollateralizationAuctions


```solidity
function canRunRecollateralizationAuctions(IBackingManager bm) external returns (bool canStart);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`canStart`|`bool`|true iff a recollateralization auction can be started|


### getRevenueAuctionERC20s

To use this, call via callStatic.


```solidity
function getRevenueAuctionERC20s(IRevenueTrader revenueTrader) external returns (IERC20[] memory toStart);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`toStart`|`IERC20[]`|The ERC20s that have auctions that can be started|


### runRevenueAuctions

To use this, first call:
- FacadeRead.auctionsSettleable(revenueTrader)
- getRevenueAuctionERC20s(revenueTrader)
If either arrays returned are non-empty, then can call this function.
Logic:
For each ERC20 in `toSettle`:
- Settle any open ERC20 trades
For each ERC20 in `toStart`:
- Transfer any revenue for that ERC20 from the backingManager to revenueTrader
- Call `revenueTrader.manageToken(ERC20)` to start an auction


```solidity
function runRevenueAuctions(IRevenueTrader revenueTrader, IERC20[] memory toSettle, IERC20[] memory toStart) external;
```

## Structs
### Cache

```solidity
struct Cache {
    IAssetRegistry reg;
    BackingManagerP1 bm;
    BasketHandlerP1 bh;
    RevenueTraderP1 rTokenTrader;
    RevenueTraderP1 rsrTrader;
    StRSRP1 stRSR;
    RTokenP1 rToken;
    IERC20 rsr;
}
```

