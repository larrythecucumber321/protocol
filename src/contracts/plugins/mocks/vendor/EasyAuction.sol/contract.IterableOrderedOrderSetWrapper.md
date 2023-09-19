# IterableOrderedOrderSetWrapper
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/mocks/vendor/EasyAuction.sol)


## State Variables
### data

```solidity
IterableOrderedOrderSet.Data internal data;
```


## Functions
### initializeEmptyList


```solidity
function initializeEmptyList() public;
```

### insert


```solidity
function insert(bytes32 value) public returns (bool);
```

### insertAt


```solidity
function insertAt(bytes32 value, bytes32 at) public returns (bool);
```

### remove


```solidity
function remove(bytes32 value) public returns (bool);
```

### removeKeepHistory


```solidity
function removeKeepHistory(bytes32 value) public returns (bool);
```

### contains


```solidity
function contains(bytes32 value) public view returns (bool);
```

### isEmpty


```solidity
function isEmpty() public view returns (bool);
```

### first


```solidity
function first() public view returns (bytes32);
```

### next


```solidity
function next(bytes32 value) public view returns (bytes32);
```

### nextMap


```solidity
function nextMap(bytes32 value) public view returns (bytes32);
```

### prevMap


```solidity
function prevMap(bytes32 value) public view returns (bytes32);
```

### decodeOrder


```solidity
function decodeOrder(bytes32 value) public pure returns (uint64, uint96, uint96);
```

### encodeOrder


```solidity
function encodeOrder(uint64 userId, uint96 sellAmount, uint96 buyAmount) public pure returns (bytes32);
```

### smallerThan


```solidity
function smallerThan(bytes32 orderLeft, bytes32 orderRight) public pure returns (bool);
```

