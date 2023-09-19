# IMain
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IMain.sol)

**Inherits:**
[IVersioned](/src/contracts/interfaces/IVersioned.sol/interface.IVersioned.md), [IAuth](/src/contracts/interfaces/IMain.sol/interface.IAuth.md), [IComponentRegistry](/src/contracts/interfaces/IMain.sol/interface.IComponentRegistry.md)

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

