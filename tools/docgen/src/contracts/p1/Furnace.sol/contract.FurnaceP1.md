# FurnaceP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/p1/Furnace.sol)

**Inherits:**
[ComponentP1](/tools/docgen/src/contracts/p1/mixins/Component.sol/abstract.ComponentP1.md), [IFurnace](/tools/docgen/src/contracts/interfaces/IFurnace.sol/interface.IFurnace.md)

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


### rToken

```solidity
IRToken private rToken;
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


### __gap
*This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps*


```solidity
uint256[47] private __gap;
```


## Functions
### init


```solidity
function init(IMain main_, uint192 ratio_) external initializer;
```

### melt

Performs any melting that has vested since last call.


```solidity
function melt() external notPausedOrFrozen;
```

### setRatio

Ratio setting


```solidity
function setRatio(uint192 ratio_) public governance;
```

