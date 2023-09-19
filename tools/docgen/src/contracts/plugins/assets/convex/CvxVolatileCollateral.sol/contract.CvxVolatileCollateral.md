# CvxVolatileCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/assets/convex/CvxVolatileCollateral.sol)

**Inherits:**
[CvxStableCollateral](/tools/docgen/src/contracts/plugins/assets/convex/CvxStableCollateral.sol/contract.CvxStableCollateral.md)


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

