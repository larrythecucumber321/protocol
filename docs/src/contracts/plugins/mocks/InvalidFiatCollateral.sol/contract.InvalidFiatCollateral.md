# InvalidFiatCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/InvalidFiatCollateral.sol)

**Inherits:**
[FiatCollateral](/contracts/plugins/assets/FiatCollateral.sol/contract.FiatCollateral.md)


## State Variables
### simplyRevert

```solidity
bool public simplyRevert;
```


## Functions
### constructor


```solidity
constructor(CollateralConfig memory config) FiatCollateral(config);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||


### price


```solidity
function price() public view virtual override(Asset, IAsset) returns (uint192, uint192);
```

### setSimplyRevert


```solidity
function setSimplyRevert(bool on) external;
```

### infiniteLoop


```solidity
function infiniteLoop() external pure;
```

