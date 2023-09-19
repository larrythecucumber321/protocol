# TestIDistributor
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IDistributor.sol)

**Inherits:**
[IDistributor](/src/contracts/interfaces/IDistributor.sol/interface.IDistributor.md)


## Functions
### FURNACE


```solidity
function FURNACE() external view returns (address);
```

### ST_RSR


```solidity
function ST_RSR() external view returns (address);
```

### distribution


```solidity
function distribution(address) external view returns (uint16 rTokenDist, uint16 rsrDist);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`rTokenDist`|`uint16`|The RToken distribution for the address|
|`rsrDist`|`uint16`|The RSR distribution for the address|


