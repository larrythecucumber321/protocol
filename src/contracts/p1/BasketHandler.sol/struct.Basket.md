# Basket
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/p1/BasketHandler.sol)

The type of BasketHandler.basket.
Defines a basket unit (BU) in terms of reference amounts of underlying tokens


```solidity
struct Basket {
    IERC20[] erc20s;
    mapping(IERC20 => uint192) refAmts;
}
```

