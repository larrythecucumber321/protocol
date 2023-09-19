# BackingManagerP1V2
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/mocks/upgrades/BackingManagerV2.sol)

**Inherits:**
[BackingManagerP1](/tools/docgen/src/contracts/p1/BackingManager.sol/contract.BackingManagerP1.md)


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

