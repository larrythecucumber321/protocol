# IMain
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IMain.sol)

**Inherits:**
[IVersioned](/tools/docgen/src/contracts/interfaces/IVersioned.sol/interface.IVersioned.md), [IAuth](/tools/docgen/src/contracts/interfaces/IMain.sol/interface.IAuth.md), [IComponentRegistry](/tools/docgen/src/contracts/interfaces/IMain.sol/interface.IComponentRegistry.md)

The central hub for the entire system. Maintains components and an owner singleton role


## Functions
### poke


```solidity
function poke() external;
```

### init


```solidity
function init(Components memory components, IERC20 rsr_, uint48 shortFreeze_, uint48 longFreeze_) external;
```

### rsr


```solidity
function rsr() external view returns (IERC20);
```

## Events
### MainInitialized

```solidity
event MainInitialized();
```

