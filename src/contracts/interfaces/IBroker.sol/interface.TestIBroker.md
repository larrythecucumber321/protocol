# TestIBroker
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IBroker.sol)

**Inherits:**
[IBroker](/src/contracts/interfaces/IBroker.sol/interface.IBroker.md)


## Functions
### gnosis


```solidity
function gnosis() external view returns (IGnosis);
```

### tradeImplementation


```solidity
function tradeImplementation() external view returns (ITrade);
```

### auctionLength


```solidity
function auctionLength() external view returns (uint48);
```

### setGnosis


```solidity
function setGnosis(IGnosis newGnosis) external;
```

### setTradeImplementation


```solidity
function setTradeImplementation(ITrade newTradeImplementation) external;
```

### setAuctionLength


```solidity
function setAuctionLength(uint48 newAuctionLength) external;
```

### setDisabled


```solidity
function setDisabled(bool disabled_) external;
```

