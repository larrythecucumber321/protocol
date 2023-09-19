# IComponent
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IComponent.sol)

**Inherits:**
[IVersioned](/src/contracts/interfaces/IVersioned.sol/interface.IVersioned.md)

A Component is the central building block of all our system contracts. Components
contain important state that must be migrated during upgrades, and they delegate
their ownership to Main's owner.


## Functions
### main


```solidity
function main() external view returns (IMain);
```

