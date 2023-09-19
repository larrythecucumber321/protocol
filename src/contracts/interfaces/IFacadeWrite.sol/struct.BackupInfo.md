# BackupInfo
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IFacadeWrite.sol)

The set of params to define a basket backup


```solidity
struct BackupInfo {
    bytes32 backupUnit;
    uint256 diversityFactor;
    ICollateral[] backupCollateral;
}
```

