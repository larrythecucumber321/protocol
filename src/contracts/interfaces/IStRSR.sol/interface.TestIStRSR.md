# TestIStRSR
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IStRSR.sol)

**Inherits:**
[IStRSR](/src/contracts/interfaces/IStRSR.sol/interface.IStRSR.md)


## Functions
### rewardRatio


```solidity
function rewardRatio() external view returns (uint192);
```

### setRewardRatio


```solidity
function setRewardRatio(uint192) external;
```

### unstakingDelay


```solidity
function unstakingDelay() external view returns (uint48);
```

### setUnstakingDelay


```solidity
function setUnstakingDelay(uint48) external;
```

### increaseAllowance


```solidity
function increaseAllowance(address, uint256) external returns (bool);
```

### decreaseAllowance


```solidity
function decreaseAllowance(address, uint256) external returns (bool);
```

### exchangeRate


```solidity
function exchangeRate() external view returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{qStRSR/qRSR} The exchange rate between StRSR and RSR|


