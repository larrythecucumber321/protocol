# MainP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p0/Main.sol)

**Inherits:**
[Versioned](/contracts/mixins/Versioned.sol/abstract.Versioned.md), Initializable, [Auth](/contracts/mixins/Auth.sol/abstract.Auth.md), [ComponentRegistry](/contracts/mixins/ComponentRegistry.sol/abstract.ComponentRegistry.md), [IMain](/contracts/interfaces/IMain.sol/interface.IMain.md)

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
