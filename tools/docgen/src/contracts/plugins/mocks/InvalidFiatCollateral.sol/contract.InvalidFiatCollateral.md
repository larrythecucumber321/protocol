# InvalidFiatCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/InvalidFiatCollateral.sol)

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

