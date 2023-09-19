# ConfigurationParams
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IFacadeWrite.sol)

The set of protocol params needed to deploy an RToken


```solidity
struct ConfigurationParams {
    string name;
    string symbol;
    string mandate;
    DeploymentParams params;
}
```

