# IAssetRegistry
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IAssetRegistry.sol)

**Inherits:**
[IComponent](/tools/docgen/src/contracts/interfaces/IComponent.sol/interface.IComponent.md)

The AssetRegistry is in charge of maintaining the ERC20 tokens eligible
to be handled by the rest of the system. If an asset is in the registry, this means:
1. Its ERC20 contract has been vetted
2. The asset is the only asset for that ERC20
3. The asset can be priced in the UoA, usually via an oracle


## Functions
### init


```solidity
function init(IMain main_, IAsset[] memory assets_) external;
```

### refresh

Fully refresh all asset state


```solidity
function refresh() external;
```

### toAsset


```solidity
function toAsset(IERC20 erc20) external view returns (IAsset);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`IAsset`|The corresponding asset for ERC20, or reverts if not registered|


### toColl


```solidity
function toColl(IERC20 erc20) external view returns (ICollateral);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`ICollateral`|The corresponding collateral, or reverts if unregistered or not collateral|


### isRegistered


```solidity
function isRegistered(IERC20 erc20) external view returns (bool);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|If the ERC20 is registered|


### erc20s


```solidity
function erc20s() external view returns (IERC20[] memory);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`IERC20[]`|A list of all registered ERC20s|


### getRegistry


```solidity
function getRegistry() external view returns (Registry memory reg);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`reg`|`Registry`|The list of registered ERC20s and Assets, in the same order|


### register


```solidity
function register(IAsset asset) external returns (bool);
```

### swapRegistered


```solidity
function swapRegistered(IAsset asset) external returns (bool swapped);
```

### unregister


```solidity
function unregister(IAsset asset) external;
```

## Events
### AssetRegistered
Emitted when an asset is added to the registry


```solidity
event AssetRegistered(IERC20 indexed erc20, IAsset indexed asset);
```

### AssetUnregistered
Emitted when an asset is removed from the registry


```solidity
event AssetUnregistered(IERC20 indexed erc20, IAsset indexed asset);
```

