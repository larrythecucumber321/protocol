# ConfigurationParams
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IFacadeWrite.sol)

The set of protocol params needed to deploy an RToken


```solidity
struct ConfigurationParams {
    string name;
    string symbol;
    string mandate;
    DeploymentParams params;
}
```

