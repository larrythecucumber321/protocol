# DeployerRegistry
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/facade/DeployerRegistry.sol)

**Inherits:**
[IDeployerRegistry](/tools/docgen/src/contracts/interfaces/IDeployerRegistry.sol/interface.IDeployerRegistry.md), [Ownable](/tools/docgen/src/contracts/plugins/mocks/vendor/EasyAuction.sol/abstract.Ownable.md)

A tiny contract for tracking deployments over time, from an EOA.

*Does not allow overwriting without deregistration*


## State Variables
### ENS

```solidity
string public constant ENS = "reserveprotocol.eth";
```


### deployments

```solidity
mapping(string => IDeployer) public deployments;
```


### latestDeployment

```solidity
IDeployer public override latestDeployment;
```


## Functions
### constructor


```solidity
constructor(address owner_) Ownable;
```

### register

Register a deployer address, keyed by a version.

*Does not allow overwriting without deregistration*


```solidity
function register(string calldata version, IDeployer deployer, bool makeLatest) external onlyOwner;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`version`|`string`|A semver version string|
|`deployer`|`IDeployer`||
|`makeLatest`|`bool`|True iff this deployment should be promoted to be the latest deployment|


### unregister

Unregister by version


```solidity
function unregister(string calldata version) external onlyOwner;
```

