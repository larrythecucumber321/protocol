# FurnaceP1V2
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/upgrades/FurnaceV2.sol)

**Inherits:**
[FurnaceP1](/tools/docgen/src/contracts/p1/Furnace.sol/contract.FurnaceP1.md)


## State Variables
### newValue

```solidity
uint256 public newValue;
```


## Functions
### setNewValue


```solidity
function setNewValue(uint256 newValue_) external governance;
```

### version


```solidity
function version() public pure override(Versioned, IVersioned) returns (string memory);
```

