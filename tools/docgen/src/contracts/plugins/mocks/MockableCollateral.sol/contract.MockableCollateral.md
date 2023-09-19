# MockableCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/mocks/MockableCollateral.sol)

**Inherits:**
[ATokenFiatCollateral](/tools/docgen/src/contracts/plugins/assets/aave/ATokenFiatCollateral.sol/contract.ATokenFiatCollateral.md)


## State Variables
### _targetPerRef

```solidity
uint192 private _targetPerRef;
```


## Functions
### constructor


```solidity
constructor(CollateralConfig memory config, uint192 revenueHiding) ATokenFiatCollateral(config, revenueHiding);
```

### setTargetPerRef


```solidity
function setTargetPerRef(uint192 val) external;
```

### targetPerRef


```solidity
function targetPerRef() public view override returns (uint192);
```

