# GasGuzzlingFiatCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/GasGuzzlingFiatCollateral.sol)

**Inherits:**
[FiatCollateral](/contracts/plugins/assets/FiatCollateral.sol/contract.FiatCollateral.md)


## State Variables
### revertRefPerTok

```solidity
bool public revertRefPerTok;
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


### refPerTok


```solidity
function refPerTok() public view virtual override returns (uint192);
```

### setRevertRefPerTok


```solidity
function setRevertRefPerTok(bool on) external;
```

### infiniteLoop


```solidity
function infiniteLoop() external pure;
```

