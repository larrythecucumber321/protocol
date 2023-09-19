# TestIBackingManager
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IBackingManager.sol)

**Inherits:**
[IBackingManager](/src/contracts/interfaces/IBackingManager.sol/interface.IBackingManager.md), [TestITrading](/src/contracts/interfaces/ITrading.sol/interface.TestITrading.md)


## Functions
### tradingDelay


```solidity
function tradingDelay() external view returns (uint48);
```

### backingBuffer


```solidity
function backingBuffer() external view returns (uint192);
```

### setTradingDelay


```solidity
function setTradingDelay(uint48 val) external;
```

### setBackingBuffer


```solidity
function setBackingBuffer(uint192 val) external;
```

