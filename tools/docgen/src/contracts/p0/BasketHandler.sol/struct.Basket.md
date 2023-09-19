# Basket
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/p0/BasketHandler.sol)

The type of BasketHandler.basket.
Defines a basket unit (BU) in terms of reference amounts of underlying tokens


```solidity
struct Basket {
    IERC20[] erc20s;
    mapping(IERC20 => uint192) refAmts;
}
```

