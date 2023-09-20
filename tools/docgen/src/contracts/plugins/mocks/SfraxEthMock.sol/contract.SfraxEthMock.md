# SfraxEthMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/SfraxEthMock.sol)

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

