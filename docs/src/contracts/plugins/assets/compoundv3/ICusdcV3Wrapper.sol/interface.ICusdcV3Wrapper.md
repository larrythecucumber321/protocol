# ICusdcV3Wrapper
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/compoundv3/ICusdcV3Wrapper.sol)

**Inherits:**
[IWrappedERC20](/contracts/plugins/assets/compoundv3/IWrappedERC20.sol/interface.IWrappedERC20.md)


## Functions
### deposit


```solidity
function deposit(uint256 amount) external;
```

### depositTo


```solidity
function depositTo(address account, uint256 amount) external;
```

### depositFrom


```solidity
function depositFrom(address from, address dst, uint256 amount) external;
```

### withdraw


```solidity
function withdraw(uint256 amount) external;
```

### withdrawTo


```solidity
function withdrawTo(address to, uint256 amount) external;
```

### withdrawFrom


```solidity
function withdrawFrom(address src, address to, uint256 amount) external;
```

### claimTo


```solidity
function claimTo(address src, address to) external;
```

### accrue


```solidity
function accrue() external;
```

### accrueAccount


```solidity
function accrueAccount(address account) external;
```

### underlyingBalanceOf


```solidity
function underlyingBalanceOf(address account) external view returns (uint256);
```

### getRewardOwed


```solidity
function getRewardOwed(address account) external view returns (uint256);
```

### exchangeRate


```solidity
function exchangeRate() external view returns (uint256);
```

### convertStaticToDynamic


```solidity
function convertStaticToDynamic(uint104 amount) external view returns (uint256);
```

### convertDynamicToStatic


```solidity
function convertDynamicToStatic(uint256 amount) external view returns (uint104);
```

### baseTrackingAccrued


```solidity
function baseTrackingAccrued(address account) external view returns (uint64);
```

### baseTrackingIndex


```solidity
function baseTrackingIndex(address account) external view returns (uint64);
```

### underlyingComet


```solidity
function underlyingComet() external view returns (CometInterface);
```

### rewardERC20


```solidity
function rewardERC20() external view returns (IERC20);
```

## Events
### RewardClaimed

```solidity
event RewardClaimed(address indexed src, address indexed recipient, address indexed token, uint256 amount);
```

## Structs
### UserBasic

```solidity
struct UserBasic {
    uint104 principal;
    uint64 baseTrackingAccrued;
    uint64 baseTrackingIndex;
    uint256 rewardsClaimed;
}
```

