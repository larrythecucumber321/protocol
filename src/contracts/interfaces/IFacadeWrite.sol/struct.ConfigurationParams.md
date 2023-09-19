# ConfigurationParams
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IFacadeWrite.sol)

The set of protocol params needed to deploy an RToken


```solidity
struct ConfigurationParams {
    string name;
    string symbol;
    string mandate;
    DeploymentParams params;
}
```

