# CollateralStatus
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IAsset.sol)

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

