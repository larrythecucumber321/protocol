# DeployerP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/p0/Deployer.sol)

**Inherits:**
[IDeployer](/src/contracts/interfaces/IDeployer.sol/interface.IDeployer.md), [Versioned](/src/contracts/mixins/Versioned.sol/abstract.Versioned.md)

The factory contract that deploys the entire P0 system.


## State Variables
### ENS

```solidity
string public constant ENS = "reserveprotocol.eth";
```


### rsr

```solidity
IERC20Metadata public immutable rsr;
```


### gnosis

```solidity
IGnosis public immutable gnosis;
```


### rsrAsset

```solidity
IAsset public immutable rsrAsset;
```


## Functions
### constructor


```solidity
constructor(IERC20Metadata rsr_, IGnosis gnosis_, IAsset rsrAsset_);
```

### deploy

Deploys an instance of the entire system


```solidity
function deploy(
    string memory name,
    string memory symbol,
    string calldata mandate,
    address owner,
    DeploymentParams memory params
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
|`<none>`|`address`|The address of the newly deployed RToken.|


