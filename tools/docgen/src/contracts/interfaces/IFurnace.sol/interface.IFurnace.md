# IFurnace
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IFurnace.sol)

**Inherits:**
[IComponent](/tools/docgen/src/contracts/interfaces/IComponent.sol/interface.IComponent.md)

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

