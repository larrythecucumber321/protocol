# CollateralStatus
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IAsset.sol)

CollateralStatus must obey a linear ordering. That is:
- being DISABLED is worse than being IFFY, or SOUND
- being IFFY is worse than being SOUND.


```solidity
enum CollateralStatus {
    SOUND,
    IFFY,
    DISABLED
}
```

