# DistributorP1V2
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/upgrades/DistributorV2.sol)

**Inherits:**
[DistributorP1](/tools/docgen/src/contracts/p1/Distributor.sol/contract.DistributorP1.md)


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

