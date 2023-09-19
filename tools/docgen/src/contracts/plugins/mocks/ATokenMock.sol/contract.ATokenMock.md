# ATokenMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/ATokenMock.sol)

**Inherits:**
[ERC20Mock](/tools/docgen/src/contracts/plugins/mocks/ERC20Mock.sol/contract.ERC20Mock.md)


## State Variables
### _underlyingAsset

```solidity
address internal _underlyingAsset;
```


## Functions
### constructor


```solidity
constructor(string memory name, string memory symbol, address underlyingAsset) ERC20Mock(name, symbol);
```

### UNDERLYING_ASSET_ADDRESS


```solidity
function UNDERLYING_ASSET_ADDRESS() external view returns (address);
```

