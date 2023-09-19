# BackingManagerP1V2
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/mocks/upgrades/BackingManagerV2.sol)

**Inherits:**
[BackingManagerP1](/src/contracts/p1/BackingManager.sol/contract.BackingManagerP1.md)


## State Variables
### newValue

```solidity
uint256 public newValue;
```


## Functions
### setNewValue


```solidity
function setNewValue(uint256 newValue_) external governance;
```

### version


```solidity
function version() public pure override(Versioned, IVersioned) returns (string memory);
```

