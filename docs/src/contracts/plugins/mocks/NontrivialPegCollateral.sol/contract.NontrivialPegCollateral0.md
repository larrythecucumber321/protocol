# NontrivialPegCollateral0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/NontrivialPegCollateral.sol)

**Inherits:**
[FiatCollateral](/contracts/plugins/assets/FiatCollateral.sol/contract.FiatCollateral.md)


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

