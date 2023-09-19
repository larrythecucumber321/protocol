# IDistributor
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IDistributor.sol)

**Inherits:**
[IComponent](/tools/docgen/src/contracts/interfaces/IComponent.sol/interface.IComponent.md)

The Distributor Component maintains a revenue distribution table that dictates
how to divide revenue across the Furnace, StRSR, and any other destinations.


## Functions
### init


```solidity
function init(IMain main_, RevenueShare memory dist) external;
```

### setDistribution


```solidity
function setDistribution(address dest, RevenueShare memory share) external;
```

### distribute

Distribute the `erc20` token across all revenue destinations


```solidity
function distribute(IERC20 erc20, uint256 amount) external;
```

### totals


```solidity
function totals() external view returns (RevenueTotals memory revTotals);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`revTotals`|`RevenueTotals`|The total of all  destinations|


## Events
### DistributionSet
Emitted when a distribution is set


```solidity
event DistributionSet(address dest, uint16 rTokenDist, uint16 rsrDist);
```

### RevenueDistributed
Emitted when revenue is distributed


```solidity
event RevenueDistributed(IERC20 indexed erc20, address indexed source, uint256 indexed amount);
```

