# BrokerP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/p1/Broker.sol)

**Inherits:**
[ComponentP1](/tools/docgen/src/contracts/p1/mixins/Component.sol/abstract.ComponentP1.md), [IBroker](/tools/docgen/src/contracts/interfaces/IBroker.sol/interface.IBroker.md)

A simple core contract that deploys disposable trading contracts for Traders


## State Variables
### MAX_AUCTION_LENGTH

```solidity
uint48 public constant MAX_AUCTION_LENGTH = 604800;
```


### backingManager

```solidity
IBackingManager private backingManager;
```


### rsrTrader

```solidity
IRevenueTrader private rsrTrader;
```


### rTokenTrader

```solidity
IRevenueTrader private rTokenTrader;
```


### tradeImplementation

```solidity
ITrade public tradeImplementation;
```


### gnosis

```solidity
IGnosis public gnosis;
```


### auctionLength

```solidity
uint48 public auctionLength;
```


### disabled

```solidity
bool public disabled;
```


### trades

```solidity
mapping(address => bool) private trades;
```


### __gap
*This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps*


```solidity
uint256[44] private __gap;
```


## Functions
### init


```solidity
function init(IMain main_, IGnosis gnosis_, ITrade tradeImplementation_, uint48 auctionLength_) external initializer;
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

