# BasketConfig
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/p0/BasketHandler.sol)


```solidity
struct BasketConfig {
    IERC20[] erc20s;
    mapping(IERC20 => uint192) targetAmts;
    mapping(IERC20 => bytes32) targetNames;
    mapping(bytes32 => BackupConfig) backups;
}
```

