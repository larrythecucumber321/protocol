# SfraxEthMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/mocks/SfraxEthMock.sol)

**Inherits:**
[ERC20Mock](/src/contracts/plugins/mocks/ERC20Mock.sol/contract.ERC20Mock.md)


## State Variables
### pricePerShare

```solidity
uint256 public pricePerShare;
```


## Functions
### constructor


```solidity
constructor() ERC20Mock("Mock SfrxETH", "SfrxEth");
```

### setPricePerShare


```solidity
function setPricePerShare(uint256 mockValue) external;
```

