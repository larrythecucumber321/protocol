# IComponent
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IComponent.sol)

**Inherits:**
[IVersioned](/tools/docgen/src/contracts/interfaces/IVersioned.sol/interface.IVersioned.md)

A Component is the central building block of all our system contracts. Components
contain important state that must be migrated during upgrades, and they delegate
their ownership to Main's owner.


## Functions
### main


```solidity
function main() external view returns (IMain);
```

