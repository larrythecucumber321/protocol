# ComponentP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/p0/mixins/Component.sol)

**Inherits:**
[Versioned](/src/contracts/mixins/Versioned.sol/abstract.Versioned.md), Initializable, ContextUpgradeable, [IComponent](/src/contracts/interfaces/IComponent.sol/interface.IComponent.md)

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

