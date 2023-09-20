# ComptrollerMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/ComptrollerMock.sol)

**Inherits:**
[IComptroller](/contracts/plugins/assets/compoundv2/ICToken.sol/interface.IComptroller.md)


## State Variables
### compBalances

```solidity
mapping(address => uint256) public compBalances;
```


### compToken

```solidity
ERC20Mock public compToken;
```


## Functions
### constructor


```solidity
constructor();
```

### setCompToken


```solidity
function setCompToken(address compToken_) external;
```

### setRewards


```solidity
function setRewards(address recipient, uint256 amount) external;
```

### claimComp


```solidity
function claimComp(address holder) external;
```

### getCompAddress


```solidity
function getCompAddress() external view returns (address);
```

