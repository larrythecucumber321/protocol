# Basket
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/p1/BasketHandler.sol)

The type of BasketHandler.basket.
Defines a basket unit (BU) in terms of reference amounts of underlying tokens


```solidity
struct Basket {
    IERC20[] erc20s;
    mapping(IERC20 => uint192) refAmts;
}
```

