# WETH9
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/WETH.sol)

https://github.com/gnosis/canonical-weth at commit 0dd1ea3e295eef916d0c6223ec63141137d22d67


## State Variables
### name

```solidity
string public name = "Wrapped Ether";
```


### symbol

```solidity
string public symbol = "WETH";
```


### decimals

```solidity
uint8 public decimals = 18;
```


### balanceOf

```solidity
mapping(address => uint256) public balanceOf;
```


### allowance

```solidity
mapping(address => mapping(address => uint256)) public allowance;
```


## Functions
### fallback


```solidity
fallback() external payable;
```

### deposit


```solidity
function deposit() public payable;
```

### withdraw


```solidity
function withdraw(uint256 wad) public;
```

### totalSupply


```solidity
function totalSupply() public view returns (uint256);
```

### approve


```solidity
function approve(address guy, uint256 wad) public returns (bool);
```

### transfer


```solidity
function transfer(address dst, uint256 wad) public returns (bool);
```

### transferFrom


```solidity
function transferFrom(address src, address dst, uint256 wad) public returns (bool);
```

## Events
### Approval

```solidity
event Approval(address indexed src, address indexed guy, uint256 wad);
```

### Transfer

```solidity
event Transfer(address indexed src, address indexed dst, uint256 wad);
```

### Deposit

```solidity
event Deposit(address indexed dst, uint256 wad);
```

### Withdrawal

```solidity
event Withdrawal(address indexed src, uint256 wad);
```

