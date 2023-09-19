# IFurnace
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IFurnace.sol)

**Inherits:**
[IComponent](/src/contracts/interfaces/IComponent.sol/interface.IComponent.md)

A helper contract to burn RTokens slowly and permisionlessly.


## Functions
### init


```solidity
function init(IMain main_, uint192 ratio_) external;
```

### ratio


```solidity
function ratio() external view returns (uint192);
```

### setRatio

Needed value range: [0, 1], granularity 1e-9


```solidity
function setRatio(uint192) external;
```

### melt

Performs any RToken melting that has vested since the last payout.


```solidity
function melt() external;
```

## Events
### RatioSet
Emitted when the melting ratio is changed


```solidity
event RatioSet(uint192 indexed oldRatio, uint192 indexed newRatio);
```

