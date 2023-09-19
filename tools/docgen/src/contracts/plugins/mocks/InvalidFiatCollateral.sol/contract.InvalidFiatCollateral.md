# InvalidFiatCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/mocks/InvalidFiatCollateral.sol)

**Inherits:**
[FiatCollateral](/tools/docgen/src/contracts/plugins/assets/FiatCollateral.sol/contract.FiatCollateral.md)


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

