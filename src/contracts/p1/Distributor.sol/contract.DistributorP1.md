# DistributorP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/p1/Distributor.sol)

**Inherits:**
[ComponentP1](/src/contracts/p1/mixins/Component.sol/abstract.ComponentP1.md), [IDistributor](/src/contracts/interfaces/IDistributor.sol/interface.IDistributor.md)


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


### rsr

```solidity
IERC20 private rsr;
```


### rToken

```solidity
IERC20 private rToken;
```


### furnace

```solidity
address private furnace;
```


### stRSR

```solidity
address private stRSR;
```


### __gap
*This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps*


```solidity
uint256[46] private __gap;
```


## Functions
### init


```solidity
function init(IMain main_, RevenueShare calldata dist) external initializer;
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

The rsr and rToken shareTotals


```solidity
function totals() public view returns (RevenueTotals memory revTotals);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`revTotals`|`RevenueTotals`|equals sum(distribution[d] for d in distribution)|


### _setDistribution

Set a distribution pair


```solidity
function _setDistribution(address dest, RevenueShare memory share) internal;
```

### _ensureNonZeroDistribution

Ensures distribution values are non-zero


```solidity
function _ensureNonZeroDistribution(uint24 rTokenDist, uint24 rsrDist) internal pure;
```

## Structs
### Transfer

```solidity
struct Transfer {
    IERC20 erc20;
    address addrTo;
    uint256 amount;
}
```

