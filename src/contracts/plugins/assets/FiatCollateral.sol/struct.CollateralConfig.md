# CollateralConfig
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/assets/FiatCollateral.sol)


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

