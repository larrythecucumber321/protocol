# TestIMain
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IMain.sol)

**Inherits:**
[IMain](/tools/docgen/src/contracts/interfaces/IMain.sol/interface.IMain.md)


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

