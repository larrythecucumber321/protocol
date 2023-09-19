# BackupInfo
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IFacadeWrite.sol)

The set of params to define a basket backup


```solidity
struct BackupInfo {
    bytes32 backupUnit;
    uint256 diversityFactor;
    ICollateral[] backupCollateral;
}
```

