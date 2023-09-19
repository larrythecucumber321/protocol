# Auth
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/mixins/Auth.sol)

**Inherits:**
AccessControlUpgradeable, [IAuth](/contracts/interfaces/IMain.sol/interface.IAuth.md)

Provides fine-grained access controls and exports frozen/paused states to Components.


## State Variables
### OWNER_ROLE
System-wide states (does not impact ERC20 functions)
- Frozen: only allow OWNER actions and staking
- Paused: only allow OWNER actions, redemption, staking, and rewards payout
Typically freezing thaws on its own in a predetemined number of blocks.
However, OWNER can also freeze forever.
The rest of the contract uses the shorthand; these declarations are here for getters


```solidity
bytes32 public constant OWNER_ROLE = OWNER;
```


### SHORT_FREEZER_ROLE

```solidity
bytes32 public constant SHORT_FREEZER_ROLE = SHORT_FREEZER;
```


### LONG_FREEZER_ROLE

```solidity
bytes32 public constant LONG_FREEZER_ROLE = LONG_FREEZER;
```


### PAUSER_ROLE

```solidity
bytes32 public constant PAUSER_ROLE = PAUSER;
```


### longFreezes

```solidity
mapping(address => uint256) public longFreezes;
```


### unfreezeAt

```solidity
uint48 public unfreezeAt;
```


### shortFreeze

```solidity
uint48 public shortFreeze;
```


### longFreeze

```solidity
uint48 public longFreeze;
```


### paused

```solidity
bool public paused;
```


### __gap
*This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps*


```solidity
uint256[48] private __gap;
```


## Functions
### __Auth_init


```solidity
function __Auth_init(uint48 shortFreeze_, uint48 longFreeze_) internal onlyInitializing;
```

### grantRole


```solidity
function grantRole(bytes32 role, address account)
    public
    override(AccessControlUpgradeable, IAccessControlUpgradeable)
    onlyRole(getRoleAdmin(role));
```

### frozen


```solidity
function frozen() external view returns (bool);
```

### pausedOrFrozen

*This -or- condition is a performance optimization for the consuming Component*


```solidity
function pausedOrFrozen() public view returns (bool);
```

### freezeShort

Enter a freeze for the `shortFreeze` duration


```solidity
function freezeShort() external onlyRole(SHORT_FREEZER);
```

### freezeLong

Enter a freeze by the `longFreeze` duration


```solidity
function freezeLong() external onlyRole(LONG_FREEZER);
```

### freezeForever

Enter a permanent freeze


```solidity
function freezeForever() external onlyRole(OWNER);
```

### unfreeze

End all freezes


```solidity
function unfreeze() external onlyRole(OWNER);
```

### pause


```solidity
function pause() external onlyRole(PAUSER);
```

### unpause


```solidity
function unpause() external onlyRole(PAUSER);
```

### setShortFreeze


```solidity
function setShortFreeze(uint48 shortFreeze_) public onlyRole(OWNER);
```

### setLongFreeze


```solidity
function setLongFreeze(uint48 longFreeze_) public onlyRole(OWNER);
```

### freezeUntil


```solidity
function freezeUntil(uint48 newUnfreezeAt) private;
```

