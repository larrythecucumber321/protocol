# MainP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/p0/Main.sol)

**Inherits:**
[Versioned](/tools/docgen/src/contracts/mixins/Versioned.sol/abstract.Versioned.md), Initializable, [Auth](/tools/docgen/src/contracts/mixins/Auth.sol/abstract.Auth.md), [ComponentRegistry](/tools/docgen/src/contracts/mixins/ComponentRegistry.sol/abstract.ComponentRegistry.md), [IMain](/tools/docgen/src/contracts/interfaces/IMain.sol/interface.IMain.md)

Collects all mixins.


## State Variables
### rsr

```solidity
IERC20 public rsr;
```


## Functions
### init

Initializer


```solidity
function init(Components memory components, IERC20 rsr_, uint48 shortFreeze_, uint48 longFreeze_)
    public
    virtual
    initializer;
```

### poke


```solidity
function poke() external;
```

### hasRole


```solidity
function hasRole(bytes32 role, address account)
    public
    view
    override(IAccessControlUpgradeable, AccessControlUpgradeable)
    returns (bool);
```

