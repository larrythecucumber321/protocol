# InvalidBrokerMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/InvalidBrokerMock.sol)

**Inherits:**
[ComponentP0](/tools/docgen/src/contracts/p0/mixins/Component.sol/abstract.ComponentP0.md), [IBroker](/tools/docgen/src/contracts/interfaces/IBroker.sol/interface.IBroker.md)

A simple core contract that deploys disposable trading contracts for Traders


## State Variables
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
bool public disabled = false;
```


## Functions
### init


```solidity
function init(IMain main_, IGnosis gnosis_, ITrade, uint48 auctionLength_) public initializer;
```

### openTrade

Invalid implementation - Reverts


```solidity
function openTrade(TradeRequest memory req) external view notPausedOrFrozen returns (ITrade);
```

### reportViolation

Dummy implementation


```solidity
function reportViolation() external;
```

### setAuctionLength

Dummy implementation


```solidity
function setAuctionLength(uint48 newAuctionLength) external governance;
```

### setDisabled

Dummy implementation


```solidity
function setDisabled(bool disabled_) external governance;
```

