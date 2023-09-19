# Registry
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IAssetRegistry.sol)

A serialization of the AssetRegistry to be passed around in the P1 impl for gas optimization


```solidity
struct Registry {
    IERC20[] erc20s;
    IAsset[] assets;
}
```

