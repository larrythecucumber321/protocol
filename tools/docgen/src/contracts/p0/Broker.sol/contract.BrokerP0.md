# BrokerP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/p0/Broker.sol)

**Inherits:**
[ComponentP0](/tools/docgen/src/contracts/p0/mixins/Component.sol/abstract.ComponentP0.md), [IBroker](/tools/docgen/src/contracts/interfaces/IBroker.sol/interface.IBroker.md)

A simple core contract that deploys disposable trading contracts for Traders


## State Variables
### MIN_BID_SHARE_OF_TOTAL_SUPPLY

```solidity
uint192 public constant MIN_BID_SHARE_OF_TOTAL_SUPPLY = 1e9;
```


### MAX_AUCTION_LENGTH

```solidity
uint48 public constant MAX_AUCTION_LENGTH = 604800;
```


### tradeImplementation

```solidity
ITrade public tradeImplementation;
```


### gnosis

```solidity
IGnosis public gnosis;
```


### trades

```solidity
mapping(address => bool) private trades;
```


### auctionLength

```solidity
uint48 public auctionLength;
```


### disabled

```solidity
bool public disabled;
```


## Functions
### init


```solidity
function init(IMain main_, IGnosis gnosis_, ITrade tradeImplementation_, uint48 auctionLength_) public initializer;
```

### openTrade

Handle a trade request by deploying a customized disposable trading contract

*Requires setting an allowance in advance*


```solidity
function openTrade(TradeRequest memory req) external notPausedOrFrozen returns (ITrade);
```

### reportViolation

Disable the broker until re-enabled by governance


```solidity
function reportViolation() external notPausedOrFrozen;
```

### resizeTrade


```solidity
function resizeTrade(TradeRequest memory req, uint256 maxTokensAllowed) private pure returns (TradeRequest memory);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`req`|`TradeRequest`||
|`maxTokensAllowed`|`uint256`|{qTok} The max number of sell tokens allowed by the trading platform|


### setGnosis


```solidity
function setGnosis(IGnosis newGnosis) public governance;
```

### setTradeImplementation


```solidity
function setTradeImplementation(ITrade newTradeImplementation) public governance;
```

### setAuctionLength


```solidity
function setAuctionLength(uint48 newAuctionLength) public governance;
```

### setDisabled


```solidity
function setDisabled(bool disabled_) external governance;
```

