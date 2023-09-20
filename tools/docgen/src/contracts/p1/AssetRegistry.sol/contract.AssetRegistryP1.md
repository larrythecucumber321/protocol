# AssetRegistryP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/p1/AssetRegistry.sol)

**Inherits:**
[ComponentP1](/tools/docgen/src/contracts/p1/mixins/Component.sol/abstract.ComponentP1.md), [IAssetRegistry](/tools/docgen/src/contracts/interfaces/IAssetRegistry.sol/interface.IAssetRegistry.md)

The AssetRegistry provides the mapping from ERC20 to Asset, allowing the rest of Main
to think in terms of ERC20 tokens and target/ref units.


## State Variables
### GAS_TO_RESERVE

```solidity
uint256 public constant GAS_TO_RESERVE = 900000;
```


### basketHandler

```solidity
IBasketHandler private basketHandler;
```


### backingManager

```solidity
IBackingManager private backingManager;
```


### _erc20s

```solidity
EnumerableSet.AddressSet private _erc20s;
```


### assets

```solidity
mapping(IERC20 => IAsset) private assets;
```


### __gap
*This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps*


```solidity
uint256[47] private __gap;
```


## Functions
### init

Initialize the AssetRegistry with assets


```solidity
function init(IMain main_, IAsset[] calldata assets_) external initializer;
```

### refresh

Update the state of all assets


```solidity
function refresh() public;
```

### register

Register `asset`
If either the erc20 address or the asset was already registered, fail


```solidity
function register(IAsset asset) external governance returns (bool);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|true if the erc20 address was not already registered.|


### swapRegistered

Register `asset` if and only if its erc20 address is already registered.
If the erc20 address was not registered, revert.


```solidity
function swapRegistered(IAsset asset) external governance returns (bool swapped);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`swapped`|`bool`|If the asset was swapped for a previously-registered asset|


### unregister

Unregister an asset, requiring that it is already registered


```solidity
function unregister(IAsset asset) external governance;
```

### toAsset

Return the Asset registered for erc20; revert if erc20 is not registered.


```solidity
function toAsset(IERC20 erc20) external view returns (IAsset);
```

### toColl

Return the Collateral registered for erc20; revert if erc20 is not registered as Collateral


```solidity
function toColl(IERC20 erc20) external view returns (ICollateral);
```

### isRegistered

Returns true if erc20 is registered.


```solidity
function isRegistered(IERC20 erc20) external view returns (bool);
```

### erc20s

Returns keys(assets) as a (duplicate-free) list.


```solidity
function erc20s() external view returns (IERC20[] memory erc20s_);
```

### getRegistry

Returns keys(assets), values(assets) as (duplicate-free) lists.


```solidity
function getRegistry() external view returns (Registry memory reg);
```

### _register

Register an asset
Forbids registering a different asset for an ERC20 that is already registered


```solidity
function _register(IAsset asset) internal returns (bool registered);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`registered`|`bool`|If the asset was moved from unregistered to registered|


### _registerIgnoringCollisions

Register an asset, unregistering any previous asset with the same ERC20.


```solidity
function _registerIgnoringCollisions(IAsset asset) private returns (bool swapped);
```

### _reserveGas


```solidity
function _reserveGas() private view returns (uint256);
```

