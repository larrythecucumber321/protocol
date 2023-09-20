# IDeployerRegistry
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IDeployerRegistry.sol)


## Functions
### register

Register a deployer address, keyed by a version.

*Does not allow overwriting without deregistration*


```solidity
function register(string calldata version, IDeployer deployer, bool makeLatest) external;
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
function unregister(string calldata version) external;
```

### latestDeployment


```solidity
function latestDeployment() external view returns (IDeployer);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`IDeployer`|The Deployer from the latest deployment|


## Events
### DeploymentUnregistered

```solidity
event DeploymentUnregistered(string version, IDeployer deployer);
```

### DeploymentRegistered

```solidity
event DeploymentRegistered(string version, IDeployer deployer);
```

### LatestChanged

```solidity
event LatestChanged(string version, IDeployer deployer);
```

