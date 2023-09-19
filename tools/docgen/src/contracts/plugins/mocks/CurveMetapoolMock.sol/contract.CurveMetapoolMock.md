# CurveMetapoolMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/mocks/CurveMetapoolMock.sol)

**Inherits:**
[CurvePoolMock](/tools/docgen/src/contracts/plugins/mocks/CurvePoolMock.sol/contract.CurvePoolMock.md), [ERC20Mock](/tools/docgen/src/contracts/plugins/mocks/ERC20Mock.sol/contract.ERC20Mock.md)


## Functions
### constructor


```solidity
constructor(uint256[] memory intialBalances, address[] memory _coins)
    CurvePoolMock(intialBalances, _coins)
    ERC20Mock("Mock CurveMetaPool", "Mock CMP");
```

