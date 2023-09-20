# ICometProxyAdmin
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/assets/compoundv3/vendor/ICometProxyAdmin.sol)


## Functions
### deployAndUpgradeTo

*Deploy a new Comet and upgrade the implementation of the Comet proxy
Requirements:
- This contract must be the admin of `CometProxy`*


```solidity
function deployAndUpgradeTo(Deployable configuratorProxy, TransparentUpgradeableProxy cometProxy) external;
```

