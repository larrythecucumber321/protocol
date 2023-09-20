# TestIRToken
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IRToken.sol)

**Inherits:**
[IRToken](/contracts/interfaces/IRToken.sol/interface.IRToken.md)


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

