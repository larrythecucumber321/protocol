# IFacadeTest
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IFacadeTest.sol)

A facade that is useful for driving/querying the system during testing
- @custom:static-call - Use ethers callStatic() in order to get result after update
- @custom:view - Regular view


## Functions
### runAuctionsForAllTraders

Prompt all traders to run auctions


```solidity
function runAuctionsForAllTraders(IRToken rToken) external;
```

### claimRewards

Prompt all traders and the RToken itself to claim rewards and sweep to BackingManager


```solidity
function claimRewards(IRToken rToken) external;
```

### totalAssetValue


```solidity
function totalAssetValue(IRToken rToken) external returns (uint192 total);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`total`|`uint192`|{UoA} An estimate of the total value of all assets held at BackingManager|


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
|`<none>`|`uint192`|{BU} The number of basket units helds|


