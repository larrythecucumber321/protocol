# BadERC20
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/BadERC20.sol)

**Inherits:**
[ERC20Mock](/contracts/plugins/mocks/ERC20Mock.sol/contract.ERC20Mock.md)


## State Variables
### transferFee

```solidity
uint192 public transferFee;
```


### revertDecimals

```solidity
bool public revertDecimals;
```


### censored

```solidity
mapping(address => bool) public censored;
```


## Functions
### constructor


```solidity
constructor(string memory name, string memory symbol) ERC20Mock(name, symbol);
```

### setTransferFee


```solidity
function setTransferFee(uint192 newFee) external;
```

### setRevertDecimals


```solidity
function setRevertDecimals(bool newVal) external;
```

### setCensored


```solidity
function setCensored(address account, bool val) external;
```

### decimals


```solidity
function decimals() public view override returns (uint8);
```

### transfer


```solidity
function transfer(address to, uint256 amount) public virtual override returns (bool);
```

### transferFrom


```solidity
function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool);
```

