# ERC20MockDecimals
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/mocks/ERC20MockDecimals.sol)

**Inherits:**
[ERC20Mock](/src/contracts/plugins/mocks/ERC20Mock.sol/contract.ERC20Mock.md)


## State Variables
### _decimals

```solidity
uint8 private _decimals;
```


## Functions
### constructor


```solidity
constructor(string memory name, string memory symbol, uint8 decimals_) ERC20Mock(name, symbol);
```

### decimals


```solidity
function decimals() public view virtual override returns (uint8);
```

