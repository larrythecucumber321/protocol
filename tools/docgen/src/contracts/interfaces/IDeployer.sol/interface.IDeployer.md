# IDeployer
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IDeployer.sol)

**Inherits:**
[IVersioned](/tools/docgen/src/contracts/interfaces/IVersioned.sol/interface.IVersioned.md)

Factory contract for an RToken system instance


## Functions
### deploy

Deploys an instance of the entire system


```solidity
function deploy(
    string calldata name,
    string calldata symbol,
    string calldata mandate,
    address owner,
    DeploymentParams calldata params
) external returns (address);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`name`|`string`|The name of the RToken to deploy|
|`symbol`|`string`|The symbol of the RToken to deploy|
|`mandate`|`string`|An IPFS link or direct string; describes what the RToken _should be_|
|`owner`|`address`|The address that should own the entire system, hopefully a governance contract|
|`params`|`DeploymentParams`|Deployment params|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`address`|The address of the newly deployed Main instance.|


## Events
### RTokenCreated
Emitted when a new RToken and accompanying system is deployed


```solidity
event RTokenCreated(IMain indexed main, IRToken indexed rToken, IStRSR stRSR, address indexed owner, string version);
```

