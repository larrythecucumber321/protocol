# Registry
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IAssetRegistry.sol)

A serialization of the AssetRegistry to be passed around in the P1 impl for gas optimization


```solidity
struct Registry {
    IERC20[] erc20s;
    IAsset[] assets;
}
```

