# MainP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/p1/Main.sol)

**Inherits:**
[Versioned](/src/contracts/mixins/Versioned.sol/abstract.Versioned.md), Initializable, [Auth](/src/contracts/mixins/Auth.sol/abstract.Auth.md), [ComponentRegistry](/src/contracts/mixins/ComponentRegistry.sol/abstract.ComponentRegistry.md), UUPSUpgradeable, [IMain](/src/contracts/interfaces/IMain.sol/interface.IMain.md)

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

