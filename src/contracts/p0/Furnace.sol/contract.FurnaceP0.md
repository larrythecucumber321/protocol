# FurnaceP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/p0/Furnace.sol)

**Inherits:**
[ComponentP0](/src/contracts/p0/mixins/Component.sol/abstract.ComponentP0.md), [IFurnace](/src/contracts/interfaces/IFurnace.sol/interface.IFurnace.md)

A helper to melt RTokens continuously and permisionlessly.


## State Variables
### MAX_RATIO

```solidity
uint192 public constant MAX_RATIO = FIX_ONE;
```


### PERIOD

```solidity
uint48 public constant PERIOD = 12;
```


### ratio

```solidity
uint192 public ratio;
```


### lastPayout

```solidity
uint48 public lastPayout;
```


### lastPayoutBal

```solidity
uint256 public lastPayoutBal;
```


## Functions
### init


```solidity
function init(IMain main_, uint192 ratio_) public initializer;
```

### melt

Performs any melting that has vested since last call.


```solidity
function melt() public notPausedOrFrozen;
```

### setRatio

Ratio setting


```solidity
function setRatio(uint192 ratio_) public governance;
```

