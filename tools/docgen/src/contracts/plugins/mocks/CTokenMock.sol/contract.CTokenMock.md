# CTokenMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/CTokenMock.sol)

**Inherits:**
[ERC20Mock](/tools/docgen/src/contracts/plugins/mocks/ERC20Mock.sol/contract.ERC20Mock.md)


## State Variables
### _underlyingToken

```solidity
address internal _underlyingToken;
```


### _exchangeRate

```solidity
uint256 internal _exchangeRate;
```


## Functions
### constructor


```solidity
constructor(string memory name, string memory symbol, address underlyingToken) ERC20Mock(name, symbol);
```

### decimals


```solidity
function decimals() public pure override returns (uint8);
```

### exchangeRateCurrent


```solidity
function exchangeRateCurrent() external returns (uint256);
```

### exchangeRateStored


```solidity
function exchangeRateStored() external view returns (uint256);
```

### setExchangeRate


```solidity
function setExchangeRate(uint192 fiatcoinRedemptionRate) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`fiatcoinRedemptionRate`|`uint192`|{fiatTok/tok}|


### underlying


```solidity
function underlying() external view returns (address);
```

### _toExchangeRate


```solidity
function _toExchangeRate(uint192 fiatcoinRedemptionRate) internal view returns (uint256);
```

