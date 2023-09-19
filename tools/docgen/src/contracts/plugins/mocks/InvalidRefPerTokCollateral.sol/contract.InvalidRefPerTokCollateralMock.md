# InvalidRefPerTokCollateralMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/InvalidRefPerTokCollateral.sol)

**Inherits:**
[AppreciatingFiatCollateral](/tools/docgen/src/contracts/plugins/assets/AppreciatingFiatCollateral.sol/abstract.AppreciatingFiatCollateral.md)

Collateral mock plugin which allows to set refPerTok=0 or revert


## State Variables
### rateMock

```solidity
uint192 public rateMock = FIX_ONE;
```


### refPerTokRevert

```solidity
bool public refPerTokRevert;
```


## Functions
### constructor


```solidity
constructor(CollateralConfig memory config, uint192 revenueHiding) AppreciatingFiatCollateral(config, revenueHiding);
```

### refresh


```solidity
function refresh() public virtual override;
```

### setRate


```solidity
function setRate(uint192 rate) external;
```

### setRefPerTokRevert


```solidity
function setRefPerTokRevert(bool on) external;
```

### refPerTok


```solidity
function refPerTok() public view virtual override returns (uint192);
```

### _underlyingRefPerTok


```solidity
function _underlyingRefPerTok() internal view override returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{ref/tok} Actual quantity of whole reference units per whole collateral tokens|


