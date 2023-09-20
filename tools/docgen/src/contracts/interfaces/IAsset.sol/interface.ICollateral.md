# ICollateral
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IAsset.sol)

**Inherits:**
[IAsset](/tools/docgen/src/contracts/interfaces/IAsset.sol/interface.IAsset.md)

A subtype of Asset that consists of the tokens eligible to back the RToken.


## Functions
### targetName

*refresh()
Refresh exchange rates and update default status.
VERY IMPORTANT: In any valid implemntation, status() MUST become DISABLED in refresh() if
refPerTok() has ever decreased since last call.*


```solidity
function targetName() external view returns (bytes32);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bytes32`|The canonical name of this collateral's target unit.|


### status


```solidity
function status() external view returns (CollateralStatus);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`CollateralStatus`|The status of this collateral asset. (Is it defaulting? Might it soon?)|


### refPerTok


```solidity
function refPerTok() external view returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{ref/tok} Quantity of whole reference units per whole collateral tokens|


### targetPerRef


```solidity
function targetPerRef() external view returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{target/ref} Quantity of whole target units per whole reference unit in the peg|


## Events
### CollateralStatusChanged
Emitted whenever the collateral status is changed


```solidity
event CollateralStatusChanged(CollateralStatus indexed oldStatus, CollateralStatus indexed newStatus);
```

