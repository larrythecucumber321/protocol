# ICometProxyAdmin
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/assets/compoundv3/vendor/ICometProxyAdmin.sol)


## Functions
### deployAndUpgradeTo

*Deploy a new Comet and upgrade the implementation of the Comet proxy
Requirements:
- This contract must be the admin of `CometProxy`*


```solidity
function deployAndUpgradeTo(Deployable configuratorProxy, TransparentUpgradeableProxy cometProxy) external;
```

