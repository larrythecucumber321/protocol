# ITrade
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/ITrade.sol)

Simple generalized trading interface for all Trade contracts to obey
Usage: if (canSettle()) settle()


## Functions
### sell


```solidity
function sell() external view returns (IERC20Metadata);
```

### buy


```solidity
function buy() external view returns (IERC20Metadata);
```

### endTime


```solidity
function endTime() external view returns (uint48);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint48`|The timestamp at which the trade is projected to become settle-able|


### canSettle

*Should be guaranteed to be true eventually as an invariant*


```solidity
function canSettle() external view returns (bool);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|True if the trade can be settled|


### settle

Complete the trade and transfer tokens back to the origin trader


```solidity
function settle() external returns (uint256 soldAmt, uint256 boughtAmt);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`soldAmt`|`uint256`|{qSellTok} The quantity of tokens sold|
|`boughtAmt`|`uint256`|{qBuyTok} The quantity of tokens bought|


