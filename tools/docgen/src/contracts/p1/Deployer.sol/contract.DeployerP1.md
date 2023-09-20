# DeployerP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/p1/Deployer.sol)

**Inherits:**
[IDeployer](/tools/docgen/src/contracts/interfaces/IDeployer.sol/interface.IDeployer.md), [Versioned](/tools/docgen/src/contracts/mixins/Versioned.sol/abstract.Versioned.md)

The factory contract that deploys the entire P1 system.


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


### implementations

```solidity
Implementations public implementations;
```


## Functions
### constructor


```solidity
constructor(IERC20Metadata rsr_, IGnosis gnosis_, IAsset rsrAsset_, Implementations memory implementations_);
```

### deploy

Deploys an instance of the entire system, oriented around some mandate.
The mandate describes what goals its governors should try to achieve. By succinctly
explaining the RToken’s purpose and what the RToken is intended to do, it provides common
ground for the governors to decide upon priorities and how to weigh tradeoffs.
Example Mandates:
- Capital preservation first. Spending power preservation second. Permissionless
access third.
- Capital preservation above all else. All revenues fund the over-collateralization pool.
- Risk-neutral pursuit of profit for token holders.
Maximize (gross revenue - payments for over-collateralization and governance).
- This RToken holds only FooCoin, to provide a trade for hedging against its
possible collapse.
The mandate may also be a URI to a longer body of text


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


