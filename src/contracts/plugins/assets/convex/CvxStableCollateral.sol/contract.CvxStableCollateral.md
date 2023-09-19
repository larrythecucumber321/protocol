# CvxStableCollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/assets/convex/CvxStableCollateral.sol)

**Inherits:**
[AppreciatingFiatCollateral](/src/contracts/plugins/assets/AppreciatingFiatCollateral.sol/abstract.AppreciatingFiatCollateral.md), [PoolTokens](/src/contracts/plugins/assets/convex/PoolTokens.sol/contract.PoolTokens.md)


## Functions
### constructor

*config Unused members: chainlinkFeed, oracleError, oracleTimeout*

*config.erc20 should be a IConvexStakingWrapper*


```solidity
constructor(CollateralConfig memory config, uint192 revenueHiding, PTConfiguration memory ptConfig)
    AppreciatingFiatCollateral(config, revenueHiding)
    PoolTokens(ptConfig);
```

### tryPrice

Can revert, used by other contract functions in order to catch errors
Should not return FIX_MAX for low
Should only return FIX_MAX for high if low is 0

*Override this when pricing is more complicated than just a single oracle*


```solidity
function tryPrice() external view virtual override returns (uint192 low, uint192 high, uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`low`|`uint192`|{UoA/tok} The low price estimate|
|`high`|`uint192`|{UoA/tok} The high price estimate|
|`<none>`|`uint192`|{target/ref} Unused. Always 0|


### refresh

Should not revert
Refresh exchange rates and update default status.
Have to override to add custom default checks


```solidity
function refresh() public virtual override;
```

### claimRewards

Claim rewards earned by holding a balance of the ERC20 token

*Use delegatecall*


```solidity
function claimRewards() external override(Asset, IRewardable);
```

### _underlyingRefPerTok


```solidity
function _underlyingRefPerTok() internal view virtual override returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{ref/tok} Actual quantity of whole reference units per whole collateral tokens|


### _anyDepeggedInPool


```solidity
function _anyDepeggedInPool() internal view virtual returns (bool);
```

### _anyDepeggedOutsidePool


```solidity
function _anyDepeggedOutsidePool() internal view virtual returns (bool);
```

