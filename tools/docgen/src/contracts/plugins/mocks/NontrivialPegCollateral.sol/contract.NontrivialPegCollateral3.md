# NontrivialPegCollateral3
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/mocks/NontrivialPegCollateral.sol)

**Inherits:**
[FiatCollateral](/tools/docgen/src/contracts/plugins/assets/FiatCollateral.sol/contract.FiatCollateral.md)


## State Variables
### peg

```solidity
uint192 private peg = FIX_ONE;
```


## Functions
### constructor


```solidity
constructor(CollateralConfig memory config) FiatCollateral(config);
```

### targetPerRef


```solidity
function targetPerRef() public view virtual override returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{target/ref} Quantity of whole target units per whole reference unit in the peg|


