# StaticATokenMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/ATokenMock.sol)

**Inherits:**
[ERC20Mock](/tools/docgen/src/contracts/plugins/mocks/ERC20Mock.sol/contract.ERC20Mock.md)


## State Variables
### aToken

```solidity
ATokenMock internal aToken;
```


### _exchangeRate

```solidity
uint256 internal _exchangeRate;
```


### aaveBalances

```solidity
mapping(address => uint256) public aaveBalances;
```


### aaveToken

```solidity
ERC20Mock public aaveToken;
```


## Functions
### constructor


```solidity
constructor(string memory name, string memory symbol, address underlyingAsset) ERC20Mock(name, symbol);
```

### decimals


```solidity
function decimals() public pure override returns (uint8);
```

### rate


```solidity
function rate() external view returns (uint256);
```

### setExchangeRate


```solidity
function setExchangeRate(uint192 fiatcoinRedemptionRate) external;
```

### setAaveToken


```solidity
function setAaveToken(address aaveToken_) external;
```

### ATOKEN


```solidity
function ATOKEN() external view returns (ATokenMock);
```

### REWARD_TOKEN


```solidity
function REWARD_TOKEN() external view returns (IERC20);
```

### setRewards


```solidity
function setRewards(address recipient, uint256 amount) external;
```

### claimRewardsToSelf


```solidity
function claimRewardsToSelf(bool) external;
```

### getClaimableRewards


```solidity
function getClaimableRewards(address user) external view returns (uint256);
```

### _toExchangeRate


```solidity
function _toExchangeRate(uint192 fiatcoinRedemptionRate) internal pure returns (uint256);
```

