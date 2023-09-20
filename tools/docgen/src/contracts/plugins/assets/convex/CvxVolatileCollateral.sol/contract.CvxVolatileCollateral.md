# CvxVolatileCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/assets/convex/CvxVolatileCollateral.sol)

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

