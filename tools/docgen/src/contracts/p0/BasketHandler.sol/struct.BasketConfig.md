# BasketConfig
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/p0/BasketHandler.sol)


```solidity
struct BasketConfig {
    IERC20[] erc20s;
    mapping(IERC20 => uint192) targetAmts;
    mapping(IERC20 => bytes32) targetNames;
    mapping(bytes32 => BackupConfig) backups;
}
```

