# CvxVolatileCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/convex/CvxVolatileCollateral.sol)

**Inherits:**
[CvxStableCollateral](/contracts/plugins/assets/convex/CvxStableCollateral.sol/contract.CvxStableCollateral.md)


## State Variables
### _defaultThreshold

```solidity
uint192 internal immutable _defaultThreshold;
```


## Functions
### constructor

*config Unused members: chainlinkFeed, oracleError, oracleTimeout*


```solidity
constructor(CollateralConfig memory config, uint192 revenueHiding, PTConfiguration memory ptConfig)
    CvxStableCollateral(config, revenueHiding, ptConfig);
```

### _anyDepeggedInPool


```solidity
function _anyDepeggedInPool() internal view override returns (bool);
```

