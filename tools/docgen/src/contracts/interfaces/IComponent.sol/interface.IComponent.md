# IComponent
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IComponent.sol)

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

