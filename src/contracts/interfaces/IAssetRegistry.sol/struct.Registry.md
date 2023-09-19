# Registry
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IAssetRegistry.sol)

A serialization of the AssetRegistry to be passed around in the P1 impl for gas optimization


```solidity
struct Registry {
    IERC20[] erc20s;
    IAsset[] assets;
}
```

