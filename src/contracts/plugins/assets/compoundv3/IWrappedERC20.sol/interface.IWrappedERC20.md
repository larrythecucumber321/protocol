# IWrappedERC20
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/assets/compoundv3/IWrappedERC20.sol)

**Inherits:**
IERC20Metadata


## Functions
### allow


```solidity
function allow(address account, bool isAllowed_) external;
```

### hasPermission


```solidity
function hasPermission(address owner, address manager) external view returns (bool);
```

### isAllowed


```solidity
function isAllowed(address first, address second) external returns (bool);
```

