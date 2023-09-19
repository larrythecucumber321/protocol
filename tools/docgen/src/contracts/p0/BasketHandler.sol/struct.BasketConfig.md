# BasketConfig
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p0/BasketHandler.sol)


```solidity
struct BasketConfig {
    IERC20[] erc20s;
    mapping(IERC20 => uint192) targetAmts;
    mapping(IERC20 => bytes32) targetNames;
    mapping(bytes32 => BackupConfig) backups;
}
```

