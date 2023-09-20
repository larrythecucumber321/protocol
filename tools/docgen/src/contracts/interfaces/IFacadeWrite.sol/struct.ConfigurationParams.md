# ConfigurationParams
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IFacadeWrite.sol)

The set of protocol params needed to deploy an RToken


```solidity
struct ConfigurationParams {
    string name;
    string symbol;
    string mandate;
    DeploymentParams params;
}
```

