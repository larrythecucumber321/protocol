# ICometProxyAdmin
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/assets/compoundv3/vendor/ICometProxyAdmin.sol)


## Functions
### deployAndUpgradeTo

*Deploy a new Comet and upgrade the implementation of the Comet proxy
Requirements:
- This contract must be the admin of `CometProxy`*


```solidity
function deployAndUpgradeTo(Deployable configuratorProxy, TransparentUpgradeableProxy cometProxy) external;
```

