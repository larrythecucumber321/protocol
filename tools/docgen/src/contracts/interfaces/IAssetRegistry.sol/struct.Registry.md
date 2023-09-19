# Registry
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IAssetRegistry.sol)

A serialization of the AssetRegistry to be passed around in the P1 impl for gas optimization


```solidity
struct Registry {
    IERC20[] erc20s;
    IAsset[] assets;
}
```

