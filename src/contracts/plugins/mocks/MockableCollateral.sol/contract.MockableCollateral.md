# MockableCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/mocks/MockableCollateral.sol)

**Inherits:**
[ATokenFiatCollateral](/src/contracts/plugins/assets/aave/ATokenFiatCollateral.sol/contract.ATokenFiatCollateral.md)


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

