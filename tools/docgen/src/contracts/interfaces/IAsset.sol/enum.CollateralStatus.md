# CollateralStatus
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IAsset.sol)

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

