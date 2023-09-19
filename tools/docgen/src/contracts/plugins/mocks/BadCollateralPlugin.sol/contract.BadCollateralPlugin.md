# BadCollateralPlugin
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/mocks/BadCollateralPlugin.sol)

**Inherits:**
[ATokenFiatCollateral](/tools/docgen/src/contracts/plugins/assets/aave/ATokenFiatCollateral.sol/contract.ATokenFiatCollateral.md)


## State Variables
### checkSoftDefault

```solidity
bool public checkSoftDefault = true;
```


### checkHardDefault

```solidity
bool public checkHardDefault = true;
```


## Functions
### constructor


```solidity
constructor(CollateralConfig memory config, uint192 revenueHiding) ATokenFiatCollateral(config, revenueHiding);
```

### setSoftDefaultCheck


```solidity
function setSoftDefaultCheck(bool on) external;
```

### setHardDefaultCheck


```solidity
function setHardDefaultCheck(bool on) external;
```

### refresh

Should not revert
Refresh exchange rates and update default status.

*Should be general enough to not need to be overridden*


```solidity
function refresh() public virtual override;
```

