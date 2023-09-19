# UnpricedAppreciatingFiatCollateralMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/mocks/UnpricedPlugins.sol)

**Inherits:**
[AppreciatingFiatCollateral](/src/contracts/plugins/assets/AppreciatingFiatCollateral.sol/abstract.AppreciatingFiatCollateral.md)


## State Variables
### unpriced

```solidity
bool public unpriced = false;
```


### mockRefPerTok

```solidity
uint192 public mockRefPerTok = FIX_ONE;
```


## Functions
### constructor


```solidity
constructor(CollateralConfig memory config, uint192 revenueHiding) AppreciatingFiatCollateral(config, revenueHiding);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||
|`revenueHiding`|`uint192`||


### tryPrice

tryPrice: mock unpriced by returning (0, FIX_MAX)


```solidity
function tryPrice() external view virtual override returns (uint192 low, uint192 high, uint192 pegPrice);
```

### _underlyingRefPerTok

Mock function, required but not used in tests


```solidity
function _underlyingRefPerTok() internal view override returns (uint192);
```

### setUnpriced


```solidity
function setUnpriced(bool on) external;
```

