# TestIRToken
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IRToken.sol)

**Inherits:**
[IRToken](/tools/docgen/src/contracts/interfaces/IRToken.sol/interface.IRToken.md)


## Functions
### setIssuanceThrottleParams


```solidity
function setIssuanceThrottleParams(ThrottleLib.Params calldata) external;
```

### setRedemptionThrottleParams


```solidity
function setRedemptionThrottleParams(ThrottleLib.Params calldata) external;
```

### issuanceThrottleParams


```solidity
function issuanceThrottleParams() external view returns (ThrottleLib.Params memory);
```

### redemptionThrottleParams


```solidity
function redemptionThrottleParams() external view returns (ThrottleLib.Params memory);
```

### increaseAllowance


```solidity
function increaseAllowance(address, uint256) external returns (bool);
```

### decreaseAllowance


```solidity
function decreaseAllowance(address, uint256) external returns (bool);
```

### monetizeDonations


```solidity
function monetizeDonations(IERC20) external;
```

