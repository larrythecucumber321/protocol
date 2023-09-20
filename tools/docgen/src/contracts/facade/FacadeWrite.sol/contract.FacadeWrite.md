# FacadeWrite
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/facade/FacadeWrite.sol)

**Inherits:**
[IFacadeWrite](/tools/docgen/src/contracts/interfaces/IFacadeWrite.sol/interface.IFacadeWrite.md)

A UX-friendly layer to interact with the protocol

*Under the hood, uses two external libs to deal with blocksize limits.*


## State Variables
### deployer

```solidity
IDeployer public immutable deployer;
```


## Functions
### constructor


```solidity
constructor(IDeployer deployer_);
```

### deployRToken

Step 1


```solidity
function deployRToken(ConfigurationParams calldata config, SetupParams calldata setup) external returns (address);
```

### setupGovernance

Step 2


```solidity
function setupGovernance(
    IRToken rToken,
    bool deployGovernance,
    bool unpause,
    GovernanceParams calldata govParams,
    GovernanceRoles calldata govRoles
) external returns (address newOwner);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`newOwner`|`address`|The address of the new owner|


