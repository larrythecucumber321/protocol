# MockableCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/MockableCollateral.sol)

**Inherits:**
[ATokenFiatCollateral](/contracts/plugins/assets/aave/ATokenFiatCollateral.sol/contract.ATokenFiatCollateral.md)


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

