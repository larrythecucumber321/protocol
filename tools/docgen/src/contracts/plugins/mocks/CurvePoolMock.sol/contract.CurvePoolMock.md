# CurvePoolMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/mocks/CurvePoolMock.sol)

**Inherits:**
[ICurvePool](/tools/docgen/src/contracts/plugins/assets/convex/PoolTokens.sol/interface.ICurvePool.md)


## State Variables
### _balances

```solidity
uint256[] internal _balances;
```


### coins

```solidity
address[] public coins;
```


### underlying_coins

```solidity
address[] public underlying_coins;
```


### base_coins

```solidity
address[] public base_coins;
```


### get_virtual_price

```solidity
uint256 public get_virtual_price;
```


## Functions
### constructor


```solidity
constructor(uint256[] memory intialBalances, address[] memory _coins);
```

### setBalances


```solidity
function setBalances(uint256[] memory newBalances) external;
```

### balances


```solidity
function balances(uint256 index) external view returns (uint256);
```

### setVirtualPrice


```solidity
function setVirtualPrice(uint256 newPrice) external;
```

### token


```solidity
function token() external pure returns (address);
```

### exchange


```solidity
function exchange(int128, int128, uint256, uint256) external;
```

