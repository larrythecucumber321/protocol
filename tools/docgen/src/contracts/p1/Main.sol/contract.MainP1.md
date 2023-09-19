# MainP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/p1/Main.sol)

**Inherits:**
[Versioned](/tools/docgen/src/contracts/mixins/Versioned.sol/abstract.Versioned.md), Initializable, [Auth](/tools/docgen/src/contracts/mixins/Auth.sol/abstract.Auth.md), [ComponentRegistry](/tools/docgen/src/contracts/mixins/ComponentRegistry.sol/abstract.ComponentRegistry.md), UUPSUpgradeable, [IMain](/tools/docgen/src/contracts/interfaces/IMain.sol/interface.IMain.md)

The center of the system around which Components orbit.


## State Variables
### rsr

```solidity
IERC20 public rsr;
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

### _authorizeUpgrade


```solidity
function _authorizeUpgrade(address newImplementation) internal override onlyRole(OWNER);
```

