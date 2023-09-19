# IBroker
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IBroker.sol)

**Inherits:**
[IComponent](/tools/docgen/src/contracts/interfaces/IComponent.sol/interface.IComponent.md)

The Broker deploys oneshot Trade contracts for Traders and monitors
the continued proper functioning of trading platforms.


## Functions
### init


```solidity
function init(IMain main_, IGnosis gnosis_, ITrade tradeImplementation_, uint48 auctionLength_) external;
```

### openTrade

Request a trade from the broker

*Requires setting an allowance in advance*


```solidity
function openTrade(TradeRequest memory req) external returns (ITrade);
```

### reportViolation

Only callable by one of the trading contracts the broker deploys


```solidity
function reportViolation() external;
```

### disabled


```solidity
function disabled() external view returns (bool);
```

## Events
### GnosisSet

```solidity
event GnosisSet(IGnosis indexed oldVal, IGnosis indexed newVal);
```

### TradeImplementationSet

```solidity
event TradeImplementationSet(ITrade indexed oldVal, ITrade indexed newVal);
```

### AuctionLengthSet

```solidity
event AuctionLengthSet(uint48 indexed oldVal, uint48 indexed newVal);
```

### DisabledSet

```solidity
event DisabledSet(bool indexed prevVal, bool indexed newVal);
```

