# BackupInfo
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IFacadeWrite.sol)

The set of params to define a basket backup


```solidity
struct BackupInfo {
    bytes32 backupUnit;
    uint256 diversityFactor;
    ICollateral[] backupCollateral;
}
```

