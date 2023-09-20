# CollateralConfig
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/assets/FiatCollateral.sol)


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

