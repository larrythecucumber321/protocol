# SetupParams
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IFacadeWrite.sol)

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

