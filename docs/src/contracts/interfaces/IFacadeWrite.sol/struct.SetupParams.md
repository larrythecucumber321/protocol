# SetupParams
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IFacadeWrite.sol)

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

