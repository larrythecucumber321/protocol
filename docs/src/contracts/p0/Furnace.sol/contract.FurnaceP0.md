# FurnaceP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p0/Furnace.sol)

**Inherits:**
[ComponentP0](/contracts/p0/mixins/Component.sol/abstract.ComponentP0.md), [IFurnace](/contracts/interfaces/IFurnace.sol/interface.IFurnace.md)

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
