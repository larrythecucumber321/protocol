# ThrottleLib
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/libraries/Throttle.sol)


## Functions
### useAvailable

Reverts if usage amount exceeds available amount


```solidity
function useAvailable(Throttle storage throttle, uint256 supply, int256 amount) internal;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`throttle`|`Throttle`||
|`supply`|`uint256`|{qRTok} Total RToken supply beforehand|
|`amount`|`int256`|{qRTok} Amount of RToken to use. Should be negative for the issuance throttle during redemption and for the redemption throttle during issuance.|


### currentlyAvailable


```solidity
function currentlyAvailable(Throttle storage throttle, uint256 limit) internal view returns (uint256 available);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`throttle`|`Throttle`||
|`limit`|`uint256`|{qRTok/hour} The hourly limit|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`available`|`uint256`|{qRTok} Amount currently available for consumption|


### hourlyLimit


```solidity
function hourlyLimit(Throttle storage throttle, uint256 supply) internal view returns (uint256 limit);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`limit`|`uint256`|{qRTok} The hourly limit|


## Structs
### Params

```solidity
struct Params {
    uint256 amtRate;
    uint192 pctRate;
}
```

### Throttle

```solidity
struct Throttle {
    Params params;
    uint48 lastTimestamp;
    uint256 lastAvailable;
}
```

