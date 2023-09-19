# SfraxEthMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/mocks/SfraxEthMock.sol)

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

