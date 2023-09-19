# DistributorP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p0/Distributor.sol)

**Inherits:**
[ComponentP0](/contracts/p0/mixins/Component.sol/abstract.ComponentP0.md), [IDistributor](/contracts/interfaces/IDistributor.sol/interface.IDistributor.md)


## State Variables
### destinations

```solidity
EnumerableSet.AddressSet internal destinations;
```


### distribution

```solidity
mapping(address => RevenueShare) public distribution;
```


### FURNACE

```solidity
address public constant FURNACE = address(1);
```


### ST_RSR

```solidity
address public constant ST_RSR = address(2);
```


### MAX_DESTINATIONS_ALLOWED

```solidity
uint8 public constant MAX_DESTINATIONS_ALLOWED = 100;
```


## Functions
### init


```solidity
function init(IMain main_, RevenueShare memory dist) public initializer;
```

### setDistribution

Set the RevenueShare for destination `dest`. Destinations `FURNACE` and `ST_RSR` refer to
main.furnace() and main.stRSR().


```solidity
function setDistribution(address dest, RevenueShare memory share) external governance;
```

### distribute

Distribute revenue, in rsr or rtoken, per the distribution table.
Requires that this contract has an allowance of at least
`amount` tokens, from `from`, of the token at `erc20`.


```solidity
function distribute(IERC20 erc20, uint256 amount) external notPausedOrFrozen;
```

### totals

Returns the rsr + rToken shareTotals


```solidity
function totals() public view returns (RevenueTotals memory revTotals);
```

### _setDistribution

Sets the distribution values - Internals


```solidity
function _setDistribution(address dest, RevenueShare memory share) internal;
```

### _ensureNonZeroDistribution

Ensures distribution values are non-zero


```solidity
function _ensureNonZeroDistribution(uint24 rTokenDist, uint24 rsrDist) internal pure;
```

