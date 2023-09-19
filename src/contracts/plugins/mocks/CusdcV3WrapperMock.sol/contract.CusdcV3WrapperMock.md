# CusdcV3WrapperMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/mocks/CusdcV3WrapperMock.sol)


## State Variables
### __gap

```solidity
uint256[20] private __gap;
```


### mockTarget

```solidity
address internal mockTarget;
```


### isMocking

```solidity
mapping(bytes4 => bool) internal isMocking;
```


### mockExchangeRate_

```solidity
uint256 internal mockExchangeRate_;
```


## Functions
### constructor


```solidity
constructor(address mockTarget_);
```

### setMockExchangeRate


```solidity
function setMockExchangeRate(bool setMock, uint256 mockValue) external;
```

### exchangeRate


```solidity
function exchangeRate() public view returns (uint256);
```

### fallback


```solidity
fallback() external payable;
```

### receive


```solidity
receive() external payable;
```

