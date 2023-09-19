# FacadeTest
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/facade/FacadeTest.sol)

**Inherits:**
[IFacadeTest](/tools/docgen/src/contracts/interfaces/IFacadeTest.sol/interface.IFacadeTest.md)

A facade that is useful for driving/querying the system during testing.
These functions should be generic to both P0 and P1.


## Functions
### runAuctionsForAllTraders

Prompt all traders to run auctions
Relatively gas-inefficient, shouldn't be used in production. Use multicall instead


```solidity
function runAuctionsForAllTraders(IRToken rToken) external;
```

### claimRewards

Prompt all traders and the RToken itself to claim rewards and sweep to BackingManager


```solidity
function claimRewards(IRToken rToken) external;
```

### totalAssetValue

Unlike Recollateralizationlib.totalAssetValue, this function _should_ yield a decreasing
quantity through the rebalancing process due to slippage accruing during each trade.


```solidity
function totalAssetValue(IRToken rToken) external returns (uint192 total);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`total`|`uint192`|{UoA} Point estimate of the value of all exogenous assets at BackingManager|


### wholeBasketsHeldBy


```solidity
function wholeBasketsHeldBy(IRToken rToken, address account) external view returns (uint192);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`rToken`|`IRToken`||
|`account`|`address`|The account to count baskets for|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{BU} The number of whole basket units held|


