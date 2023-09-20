# CurveMetapoolMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/CurveMetapoolMock.sol)

**Inherits:**
[CurvePoolMock](/tools/docgen/src/contracts/plugins/mocks/CurvePoolMock.sol/contract.CurvePoolMock.md), [ERC20Mock](/tools/docgen/src/contracts/plugins/mocks/ERC20Mock.sol/contract.ERC20Mock.md)


## Functions
### constructor


```solidity
constructor(uint256[] memory intialBalances, address[] memory _coins)
    CurvePoolMock(intialBalances, _coins)
    ERC20Mock("Mock CurveMetaPool", "Mock CMP");
```
