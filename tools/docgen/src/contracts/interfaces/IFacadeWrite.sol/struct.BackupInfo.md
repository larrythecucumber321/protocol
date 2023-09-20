# BackupInfo
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IFacadeWrite.sol)

The set of params to define a basket backup


```solidity
struct BackupInfo {
    bytes32 backupUnit;
    uint256 diversityFactor;
    ICollateral[] backupCollateral;
}
```

