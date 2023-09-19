# ICometConfigurator
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/compoundv3/vendor/ICometConfigurator.sol)


## Functions
### getConfiguration


```solidity
function getConfiguration(address cometProxy) external view returns (Configuration memory);
```

### setBaseTrackingSupplySpeed


```solidity
function setBaseTrackingSupplySpeed(address cometProxy, uint64 newBaseTrackingSupplySpeed) external;
```

## Structs
### Configuration

```solidity
struct Configuration {
    address governor;
    address pauseGuardian;
    address baseToken;
    address baseTokenPriceFeed;
    address extensionDelegate;
    uint64 supplyKink;
    uint64 supplyPerYearInterestRateSlopeLow;
    uint64 supplyPerYearInterestRateSlopeHigh;
    uint64 supplyPerYearInterestRateBase;
    uint64 borrowKink;
    uint64 borrowPerYearInterestRateSlopeLow;
    uint64 borrowPerYearInterestRateSlopeHigh;
    uint64 borrowPerYearInterestRateBase;
    uint64 storeFrontPriceFactor;
    uint64 trackingIndexScale;
    uint64 baseTrackingSupplySpeed;
    uint64 baseTrackingBorrowSpeed;
    uint104 baseMinForRewards;
    uint104 baseBorrowMin;
    uint104 targetReserves;
    AssetConfig[] assetConfigs;
}
```

### AssetConfig

```solidity
struct AssetConfig {
    address asset;
    address priceFeed;
    uint8 decimals;
    uint64 borrowCollateralFactor;
    uint64 liquidateCollateralFactor;
    uint64 liquidationFactor;
    uint128 supplyCap;
}
```

