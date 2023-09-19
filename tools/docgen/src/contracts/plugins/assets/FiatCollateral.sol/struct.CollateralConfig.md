# CollateralConfig
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/assets/FiatCollateral.sol)


```solidity
struct CollateralConfig {
    uint48 priceTimeout;
    AggregatorV3Interface chainlinkFeed;
    uint192 oracleError;
    IERC20Metadata erc20;
    uint192 maxTradeVolume;
    uint48 oracleTimeout;
    bytes32 targetName;
    uint192 defaultThreshold;
    uint48 delayUntilDefault;
}
```

