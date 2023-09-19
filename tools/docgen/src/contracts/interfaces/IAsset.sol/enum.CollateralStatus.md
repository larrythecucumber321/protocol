# CollateralStatus
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IAsset.sol)

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

