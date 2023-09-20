# ICometProxyAdmin
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/compoundv3/vendor/ICometProxyAdmin.sol)


## Functions
### deployAndUpgradeTo

*Deploy a new Comet and upgrade the implementation of the Comet proxy
Requirements:
- This contract must be the admin of `CometProxy`*


```solidity
function deployAndUpgradeTo(Deployable configuratorProxy, TransparentUpgradeableProxy cometProxy) external;
```

