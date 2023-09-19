# ComponentP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/p1/mixins/Component.sol)

**Inherits:**
[Versioned](/src/contracts/mixins/Versioned.sol/abstract.Versioned.md), Initializable, ContextUpgradeable, UUPSUpgradeable, [IComponent](/src/contracts/interfaces/IComponent.sol/interface.IComponent.md)

Abstract superclass for system contracts registered in Main


## State Variables
### main

```solidity
IMain public main;
```


### __gap
*This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps*


```solidity
uint256[49] private __gap;
```


## Functions
### constructor


```solidity
constructor() initializer;
```

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

### _authorizeUpgrade


```solidity
function _authorizeUpgrade(address newImplementation) internal view override governance;
```

