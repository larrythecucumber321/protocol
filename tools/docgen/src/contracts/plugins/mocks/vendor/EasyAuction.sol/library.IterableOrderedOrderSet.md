# IterableOrderedOrderSet
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/vendor/EasyAuction.sol)


## State Variables
### QUEUE_START

```solidity
bytes32 internal constant QUEUE_START = 0x0000000000000000000000000000000000000000000000000000000000000001;
```


### QUEUE_END

```solidity
bytes32 internal constant QUEUE_END = 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000001;
```


## Functions
### initializeEmptyList


```solidity
function initializeEmptyList(Data storage self) internal;
```

### isEmpty


```solidity
function isEmpty(Data storage self) internal view returns (bool);
```

### insert


```solidity
function insert(Data storage self, bytes32 elementToInsert, bytes32 elementBeforeNewOne) internal returns (bool);
```

### removeKeepHistory

The element is removed from the linked list, but the node retains
information on which predecessor it had, so that a node in the chain
can be reached by following the predecessor chain of deleted elements.


```solidity
function removeKeepHistory(Data storage self, bytes32 elementToRemove) internal returns (bool);
```

### remove

Remove an element from the chain, clearing all related storage.
Note that no elements should be inserted using as a reference point a
node deleted after calling `remove`, since an element in the `prev`
chain might be missing.


```solidity
function remove(Data storage self, bytes32 elementToRemove) internal returns (bool);
```

### contains


```solidity
function contains(Data storage self, bytes32 value) internal view returns (bool);
```

### smallerThan


```solidity
function smallerThan(bytes32 orderLeft, bytes32 orderRight) internal pure returns (bool);
```

### first


```solidity
function first(Data storage self) internal view returns (bytes32);
```

### next


```solidity
function next(Data storage self, bytes32 value) internal view returns (bytes32);
```

### decodeOrder


```solidity
function decodeOrder(bytes32 _orderData) internal pure returns (uint64 userId, uint96 buyAmount, uint96 sellAmount);
```

### encodeOrder


```solidity
function encodeOrder(uint64 userId, uint96 buyAmount, uint96 sellAmount) internal pure returns (bytes32);
```

## Structs
### Data
The struct is used to implement a modified version of a doubly linked
list with sorted elements. The list starts from QUEUE_START to
QUEUE_END, and each node keeps track of its predecessor and successor.
Nodes can be added or removed.
`next` and `prev` have a different role. The list is supposed to be
traversed with `next`. If `next` is empty, the node is not part of the
list. However, `prev` might be set for elements that are not in the
list, which is why it should not be used for traversing. Having a `prev`
set for elements not in the list is used to keep track of the history of
the position in the list of a removed element.


```solidity
struct Data {
    mapping(bytes32 => bytes32) nextMap;
    mapping(bytes32 => bytes32) prevMap;
}
```

### Order

```solidity
struct Order {
    uint64 owner;
    uint96 buyAmount;
    uint96 sellAmount;
}
```

