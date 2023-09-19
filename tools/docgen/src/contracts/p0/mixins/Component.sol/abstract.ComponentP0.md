# ComponentP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p0/mixins/Component.sol)

**Inherits:**
[Versioned](/tools/docgen/src/contracts/mixins/Versioned.sol/abstract.Versioned.md), Initializable, ContextUpgradeable, [IComponent](/tools/docgen/src/contracts/interfaces/IComponent.sol/interface.IComponent.md)

Abstract superclass for system contracts registered in Main


## State Variables
### main

```solidity
IMain public main;
```


## Functions
### __Component_init


```solidity
function __Component_init(IMain main_) internal onlyInitializing;
```

### notPausedOrFrozen


```solidity
modifier notPausedOrFrozen();
```

### notFrozen


```solidity
modifier notFrozen();
```

### governance


```solidity
modifier governance();
```

