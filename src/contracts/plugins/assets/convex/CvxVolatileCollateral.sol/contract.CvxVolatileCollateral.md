# CvxVolatileCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/assets/convex/CvxVolatileCollateral.sol)

**Inherits:**
[CvxStableCollateral](/src/contracts/plugins/assets/convex/CvxStableCollateral.sol/contract.CvxStableCollateral.md)


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

