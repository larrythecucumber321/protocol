# AaveLendingPoolMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/AaveLendingPoolMock.sol)

**Inherits:**
[IAaveLendingPool](/tools/docgen/src/contracts/plugins/mocks/AaveLendingPoolMock.sol/interface.IAaveLendingPool.md)


## State Variables
### _lendingAddressesProvider

```solidity
ILendingPoolAddressesProvider private _lendingAddressesProvider;
```


### _normalizedIncome

```solidity
mapping(address => uint256) private _normalizedIncome;
```


## Functions
### constructor


```solidity
constructor(address lendingAddressesProvider);
```

### getAddressesProvider


```solidity
function getAddressesProvider() external view returns (ILendingPoolAddressesProvider);
```

### getReserveNormalizedIncome


```solidity
function getReserveNormalizedIncome(address asset) external view returns (uint256);
```

### setNormalizedIncome


```solidity
function setNormalizedIncome(address asset, uint256 newRate) external;
```

