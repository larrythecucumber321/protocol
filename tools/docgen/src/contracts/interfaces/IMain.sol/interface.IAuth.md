# IAuth
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IMain.sol)

**Inherits:**
IAccessControlUpgradeable


## Functions
### pausedOrFrozen

Paused: Disable everything except for OWNER actions, RToken.redeem, StRSR.stake,
and StRSR.payoutRewards
Frozen: Disable everything except for OWNER actions + StRSR.stake (for governance)


```solidity
function pausedOrFrozen() external view returns (bool);
```

### frozen


```solidity
function frozen() external view returns (bool);
```

### shortFreeze


```solidity
function shortFreeze() external view returns (uint48);
```

### longFreeze


```solidity
function longFreeze() external view returns (uint48);
```

### freezeForever


```solidity
function freezeForever() external;
```

### freezeShort


```solidity
function freezeShort() external;
```

### freezeLong


```solidity
function freezeLong() external;
```

### unfreeze


```solidity
function unfreeze() external;
```

### pause


```solidity
function pause() external;
```

### unpause


```solidity
function unpause() external;
```

## Events
### UnfreezeAtSet
Emitted when `unfreezeAt` is changed


```solidity
event UnfreezeAtSet(uint48 indexed oldVal, uint48 indexed newVal);
```

### ShortFreezeDurationSet
Emitted when the short freeze duration governance param is changed


```solidity
event ShortFreezeDurationSet(uint48 indexed oldDuration, uint48 indexed newDuration);
```

### LongFreezeDurationSet
Emitted when the long freeze duration governance param is changed


```solidity
event LongFreezeDurationSet(uint48 indexed oldDuration, uint48 indexed newDuration);
```

### PausedSet
Emitted when the system is paused or unpaused


```solidity
event PausedSet(bool indexed oldVal, bool indexed newVal);
```

