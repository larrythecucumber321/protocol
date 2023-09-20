# IFacadeAct
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IFacadeAct.sol)

A calldata-preparer, useful to MEV searchers and off-chain bots looking to progress an
RToken.
- @custom:static-call - Use ethers callStatic() in order to get result after update
v


## Functions
### getActCalldata

Returns the next call a keeper of MEV searcher should make in order to progress the system
Returns zero bytes to indicate no action should be made

*Don't actually execute this!*


```solidity
function getActCalldata(RTokenP1 rToken) external returns (address to, bytes memory calldata_);
```

### claimRewards

Claims rewards from all places they can accrue.


```solidity
function claimRewards(RTokenP1 rToken) external;
```

### canRunRecollateralizationAuctions

To use this, call via callStatic.


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
- Call `revenueTrader.manageToken(ERC20)` to start an auction, if possible


```solidity
function runRevenueAuctions(IRevenueTrader revenueTrader, IERC20[] memory toSettle, IERC20[] memory toStart) external;
```

