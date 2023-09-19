# GnosisTrade
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/trading/GnosisTrade.sol)

**Inherits:**
[ITrade](/src/contracts/interfaces/ITrade.sol/interface.ITrade.md)

Trade contract against the Gnosis EasyAuction mechanism


## State Variables
### FEE_DENOMINATOR

```solidity
uint256 public constant FEE_DENOMINATOR = 1000;
```


### MAX_ORDERS

```solidity
uint96 public constant MAX_ORDERS = 1e5;
```


### DEFAULT_MIN_BID

```solidity
uint192 public constant DEFAULT_MIN_BID = FIX_ONE / 100;
```


### status

```solidity
TradeStatus public status;
```


### gnosis

```solidity
IGnosis public gnosis;
```


### auctionId

```solidity
uint256 public auctionId;
```


### broker

```solidity
IBroker public broker;
```


### origin

```solidity
address public origin;
```


### sell

```solidity
IERC20Metadata public sell;
```


### buy

```solidity
IERC20Metadata public buy;
```


### initBal

```solidity
uint256 public initBal;
```


### endTime

```solidity
uint48 public endTime;
```


### worstCasePrice

```solidity
uint192 public worstCasePrice;
```


## Functions
### stateTransition


```solidity
modifier stateTransition(TradeStatus begin, TradeStatus end);
```

### init

Constructor function, can only be called once

*Expects sell tokens to already be present*


```solidity
function init(IBroker broker_, address origin_, IGnosis gnosis_, uint48 auctionLength, TradeRequest calldata req)
    external
    stateTransition(TradeStatus.NOT_STARTED, TradeStatus.OPEN);
```

### settle

Settle trade, transfer tokens to trader, and report bad trade if needed


```solidity
function settle()
    external
    stateTransition(TradeStatus.OPEN, TradeStatus.CLOSED)
    returns (uint256 soldAmt, uint256 boughtAmt);
```

### transferToOriginAfterTradeComplete

Anyone can transfer any ERC20 back to the origin after the trade has been closed

*Escape hatch in case trading partner freezes up, or other unexpected events*


```solidity
function transferToOriginAfterTradeComplete(IERC20 erc20) external;
```

### canSettle


```solidity
function canSettle() external view returns (bool);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|True if the trade can be settled.|


### isAuctionCleared


```solidity
function isAuctionCleared() private view returns (bool);
```

