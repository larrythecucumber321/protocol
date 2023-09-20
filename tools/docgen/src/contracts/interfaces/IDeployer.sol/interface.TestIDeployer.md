# TestIDeployer
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IDeployer.sol)

**Inherits:**
[IDeployer](/tools/docgen/src/contracts/interfaces/IDeployer.sol/interface.IDeployer.md)


## Functions
### ENS

A top-level ENS domain that should always point to the latest Deployer instance


```solidity
function ENS() external view returns (string memory);
```

### rsr


```solidity
function rsr() external view returns (IERC20Metadata);
```

### gnosis


```solidity
function gnosis() external view returns (IGnosis);
```

### rsrAsset


```solidity
function rsrAsset() external view returns (IAsset);
```

