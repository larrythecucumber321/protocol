# CometMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/CometMock.sol)


## State Variables
### _reserves

```solidity
int256 internal _reserves;
```


### externalDelegate

```solidity
address public externalDelegate;
```


## Functions
### constructor


```solidity
constructor(int256 reserves_, address delegate);
```

### setReserves


```solidity
function setReserves(int256 amount) external;
```

### getReserves


```solidity
function getReserves() public view returns (int256);
```

### accrueAccount


```solidity
function accrueAccount(address account) public;
```

### fallback


```solidity
fallback() external payable;
```

### receive


```solidity
receive() external payable;
```

## Structs
### TotalsBasic

```solidity
struct TotalsBasic {
    uint64 baseSupplyIndex;
    uint64 baseBorrowIndex;
    uint64 trackingSupplyIndex;
    uint64 trackingBorrowIndex;
    uint104 totalSupplyBase;
    uint104 totalBorrowBase;
    uint40 lastAccrualTime;
    uint8 pauseFlags;
}
```

### UserBasic

```solidity
struct UserBasic {
    int104 principal;
    uint64 baseTrackingIndex;
    uint64 baseTrackingAccrued;
    uint16 assetsIn;
    uint8 _reserved;
}
```

