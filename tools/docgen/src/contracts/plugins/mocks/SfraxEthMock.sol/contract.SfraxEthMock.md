# SfraxEthMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/SfraxEthMock.sol)

**Inherits:**
[ERC20Mock](/tools/docgen/src/contracts/plugins/mocks/ERC20Mock.sol/contract.ERC20Mock.md)


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

