# IAaveIncentivesController
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/assets/aave/IAaveIncentivesController.sol)


## Functions
### getAssetData


```solidity
function getAssetData(address asset) external view returns (uint256, uint256, uint256);
```

### setClaimer

*Whitelists an address to claim the rewards on behalf of another address*


```solidity
function setClaimer(address user, address claimer) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`user`|`address`|The address of the user|
|`claimer`|`address`|The address of the claimer|


### getClaimer

*Returns the whitelisted claimer for a certain address (0x0 if not set)*


```solidity
function getClaimer(address user) external view returns (address);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`user`|`address`|The address of the user|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`address`|The claimer address|


### configureAssets

*Configure assets for a certain rewards emission*


```solidity
function configureAssets(address[] calldata assets, uint256[] calldata emissionsPerSecond) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`assets`|`address[]`|The assets to incentivize|
|`emissionsPerSecond`|`uint256[]`|The emission for each asset|


### handleAction

*Called by the corresponding asset on any update that affects the rewards distribution*


```solidity
function handleAction(address asset, uint256 userBalance, uint256 totalSupply) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`asset`|`address`|The address of the user|
|`userBalance`|`uint256`|The balance of the user of the asset in the lending pool|
|`totalSupply`|`uint256`|The total supply of the asset in the lending pool|


### getRewardsBalance

*Returns the total of rewards of an user, already accrued + not yet accrued*


```solidity
function getRewardsBalance(address[] calldata assets, address user) external view returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`assets`|`address[]`||
|`user`|`address`|The address of the user|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The rewards|


### claimRewards

*Claims reward for an user, on all the assets of the lending pool, accumulating the pending rewards*


```solidity
function claimRewards(address[] calldata assets, uint256 amount, address to) external returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`assets`|`address[]`||
|`amount`|`uint256`|Amount of rewards to claim|
|`to`|`address`|Address that will be receiving the rewards|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|Rewards claimed|


### claimRewardsOnBehalf

*Claims reward for an user on behalf, on all the assets of the lending pool, accumulating the pending rewards. The caller must
be whitelisted via "allowClaimOnBehalf" function by the RewardsAdmin role manager*


```solidity
function claimRewardsOnBehalf(address[] calldata assets, uint256 amount, address user, address to)
    external
    returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`assets`|`address[]`||
|`amount`|`uint256`|Amount of rewards to claim|
|`user`|`address`|Address to check and claim rewards|
|`to`|`address`|Address that will be receiving the rewards|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|Rewards claimed|


### getUserUnclaimedRewards

*returns the unclaimed rewards of the user*


```solidity
function getUserUnclaimedRewards(address user) external view returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`user`|`address`|the address of the user|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|the unclaimed user rewards|


### getUserAssetData

*returns the unclaimed rewards of the user*


```solidity
function getUserAssetData(address user, address asset) external view returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`user`|`address`|the address of the user|
|`asset`|`address`|The asset to incentivize|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|the user index for the asset|


### REWARD_TOKEN

*for backward compatibility with previous implementation of the Incentives controller*


```solidity
function REWARD_TOKEN() external view returns (address);
```

### PRECISION

*for backward compatibility with previous implementation of the Incentives controller*


```solidity
function PRECISION() external view returns (uint8);
```

## Events
### RewardsAccrued

```solidity
event RewardsAccrued(address indexed user, uint256 amount);
```

### RewardsClaimed

```solidity
event RewardsClaimed(address indexed user, address indexed to, uint256 amount);
```

### RewardsClaimed

```solidity
event RewardsClaimed(address indexed user, address indexed to, address indexed claimer, uint256 amount);
```

### ClaimerSet

```solidity
event ClaimerSet(address indexed user, address indexed claimer);
```

