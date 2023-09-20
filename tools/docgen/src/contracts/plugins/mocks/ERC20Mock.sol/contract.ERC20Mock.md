# ERC20Mock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/ERC20Mock.sol)

**Inherits:**
[ERC20](/tools/docgen/src/contracts/plugins/assets/aave/ERC20.sol/contract.ERC20.md)


## Functions
### constructor


```solidity
constructor(string memory name, string memory symbol) ERC20(name, symbol);
```

### mint


```solidity
function mint(address recipient, uint256 amount) external;
```

### burn


```solidity
function burn(address sender, uint256 amount) external;
```

### adminApprove


```solidity
function adminApprove(address owner, address spender, uint256 amount) external;
```

