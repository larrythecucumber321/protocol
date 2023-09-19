# CTokenV3Collateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/assets/compoundv3/CTokenV3Collateral.sol)

**Inherits:**
[AppreciatingFiatCollateral](/src/contracts/plugins/assets/AppreciatingFiatCollateral.sol/abstract.AppreciatingFiatCollateral.md)

Collateral plugin for Compound V3,
tok = wcUSDC
ref = USDC
tar = USD
UoA = USD


## State Variables
### rewardERC20

```solidity
IERC20 public immutable rewardERC20;
```


### comet

```solidity
IComet public immutable comet;
```


### reservesThresholdIffy

```solidity
uint256 public immutable reservesThresholdIffy;
```


## Functions
### constructor


```solidity
constructor(CollateralConfig memory config, uint192 revenueHiding, uint256 reservesThresholdIffy_)
    AppreciatingFiatCollateral(config, revenueHiding);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`config`|`CollateralConfig`||
|`revenueHiding`|`uint192`||
|`reservesThresholdIffy_`|`uint256`||


### bal


```solidity
function bal(address account) external view override(Asset, IAsset) returns (uint192);
```

### claimRewards


```solidity
function claimRewards() external override(Asset, IRewardable);
```

### _underlyingRefPerTok


```solidity
function _underlyingRefPerTok() internal view virtual override returns (uint192);
```

### refresh

Refresh exchange rates and update default status.

*Should not need to override: can handle collateral with variable refPerTok()*


```solidity
function refresh() public virtual override;
```

## Structs
### CometCollateralConfig

```solidity
struct CometCollateralConfig {
    IERC20 rewardERC20;
    uint256 reservesThresholdIffy;
    uint256 reservesThresholdDisabled;
}
```

