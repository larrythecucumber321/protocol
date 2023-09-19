# DeploymentParams
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IDeployer.sol)

The set of protocol params needed to configure a new system deployment.
meaning that after deployment there is freedom to allow parametrizations to deviate.


```solidity
struct DeploymentParams {
    RevenueShare dist;
    uint192 minTradeVolume;
    uint192 rTokenMaxTradeVolume;
    uint48 shortFreeze;
    uint48 longFreeze;
    uint192 rewardRatio;
    uint48 unstakingDelay;
    uint48 tradingDelay;
    uint48 auctionLength;
    uint192 backingBuffer;
    uint192 maxTradeSlippage;
    ThrottleLib.Params issuanceThrottle;
    ThrottleLib.Params redemptionThrottle;
}
```

