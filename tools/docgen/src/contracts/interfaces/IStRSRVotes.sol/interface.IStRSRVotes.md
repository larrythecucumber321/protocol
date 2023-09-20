# IStRSRVotes
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IStRSRVotes.sol)

**Inherits:**
IVotesUpgradeable


## Functions
### currentEra


```solidity
function currentEra() external view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The current era|


### getPastEra


```solidity
function getPastEra(uint256 blockNumber) external view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The era at a past block number|


