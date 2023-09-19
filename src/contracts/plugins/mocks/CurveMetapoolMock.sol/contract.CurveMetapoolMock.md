# CurveMetapoolMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/mocks/CurveMetapoolMock.sol)

**Inherits:**
[CurvePoolMock](/src/contracts/plugins/mocks/CurvePoolMock.sol/contract.CurvePoolMock.md), [ERC20Mock](/src/contracts/plugins/mocks/ERC20Mock.sol/contract.ERC20Mock.md)


## Functions
### constructor


```solidity
constructor(uint256[] memory intialBalances, address[] memory _coins)
    CurvePoolMock(intialBalances, _coins)
    ERC20Mock("Mock CurveMetaPool", "Mock CMP");
```

