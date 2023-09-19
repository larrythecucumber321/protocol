# BasketConfig
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/p0/BasketHandler.sol)


```solidity
struct BasketConfig {
    IERC20[] erc20s;
    mapping(IERC20 => uint192) targetAmts;
    mapping(IERC20 => bytes32) targetNames;
    mapping(bytes32 => BackupConfig) backups;
}
```

