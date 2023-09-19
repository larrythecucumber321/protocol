# Basket
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p0/BasketHandler.sol)

The type of BasketHandler.basket.
Defines a basket unit (BU) in terms of reference amounts of underlying tokens


```solidity
struct Basket {
    IERC20[] erc20s;
    mapping(IERC20 => uint192) refAmts;
}
```

