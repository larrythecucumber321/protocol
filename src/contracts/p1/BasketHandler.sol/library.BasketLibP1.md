# BasketLibP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/p1/BasketHandler.sol)


## Functions
### empty

Set self to a fresh, empty basket


```solidity
function empty(Basket storage self) internal;
```

### setFrom

Set `self` equal to `other`


```solidity
function setFrom(Basket storage self, Basket storage other) internal;
```

### add

Add `weight` to the refAmount of collateral token `tok` in the basket `self`


```solidity
function add(Basket storage self, IERC20 tok, uint192 weight) internal;
```

