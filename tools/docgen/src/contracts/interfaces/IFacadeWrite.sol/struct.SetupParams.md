# SetupParams
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IFacadeWrite.sol)

The set of protocol params needed to setup a full instance of an RToken


```solidity
struct SetupParams {
    IAsset[] assets;
    ICollateral[] primaryBasket;
    uint192[] weights;
    BackupInfo[] backups;
    BeneficiaryInfo[] beneficiaries;
}
```

