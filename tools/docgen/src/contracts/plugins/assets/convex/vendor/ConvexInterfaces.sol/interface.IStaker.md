# IStaker
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/assets/convex/vendor/ConvexInterfaces.sol)


## Functions
### deposit


```solidity
function deposit(address, address) external;
```

### withdraw


```solidity
function withdraw(address) external;
```

### withdraw


```solidity
function withdraw(address, address, uint256) external;
```

### withdrawAll


```solidity
function withdrawAll(address, address) external;
```

### createLock


```solidity
function createLock(uint256, uint256) external;
```

### increaseAmount


```solidity
function increaseAmount(uint256) external;
```

### increaseTime


```solidity
function increaseTime(uint256) external;
```

### release


```solidity
function release() external;
```

### claimCrv


```solidity
function claimCrv(address) external returns (uint256);
```

### claimRewards


```solidity
function claimRewards(address) external;
```

### claimFees


```solidity
function claimFees(address, address) external;
```

### setStashAccess


```solidity
function setStashAccess(address, bool) external;
```

### vote


```solidity
function vote(uint256, address, bool) external;
```

### voteGaugeWeight


```solidity
function voteGaugeWeight(address, uint256) external;
```

### balanceOfPool


```solidity
function balanceOfPool(address) external view returns (uint256);
```

### operator


```solidity
function operator() external view returns (address);
```

### execute


```solidity
function execute(address _to, uint256 _value, bytes calldata _data) external returns (bool, bytes memory);
```

