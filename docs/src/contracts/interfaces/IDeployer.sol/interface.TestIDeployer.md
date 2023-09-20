# TestIDeployer
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IDeployer.sol)

**Inherits:**
[IDeployer](/contracts/interfaces/IDeployer.sol/interface.IDeployer.md)


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
