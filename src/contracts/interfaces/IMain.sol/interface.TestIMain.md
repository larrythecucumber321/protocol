# TestIMain
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IMain.sol)

**Inherits:**
[IMain](/src/contracts/interfaces/IMain.sol/interface.IMain.md)


## Functions
### setShortFreeze


```solidity
function setShortFreeze(uint48) external;
```

### setLongFreeze


```solidity
function setLongFreeze(uint48) external;
```

### shortFreeze


```solidity
function shortFreeze() external view returns (uint48);
```

### longFreeze


```solidity
function longFreeze() external view returns (uint48);
```

### longFreezes


```solidity
function longFreezes(address account) external view returns (uint256);
```

### paused


```solidity
function paused() external view returns (bool);
```

