# AssetRegistryP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p0/AssetRegistry.sol)

**Inherits:**
[ComponentP0](/tools/docgen/src/contracts/p0/mixins/Component.sol/abstract.ComponentP0.md), [IAssetRegistry](/tools/docgen/src/contracts/interfaces/IAssetRegistry.sol/interface.IAssetRegistry.md)

The AssetRegistry provides the mapping from ERC20 to Asset, allowing the rest of Main
to think in terms of ERC20 tokens and target/ref units.


## State Variables
### GAS_TO_RESERVE

```solidity
uint256 public constant GAS_TO_RESERVE = 900000;
```


### _erc20s

```solidity
EnumerableSet.AddressSet private _erc20s;
```


### assets

```solidity
mapping(IERC20 => IAsset) private assets;
```


## Functions
### init


```solidity
function init(IMain main_, IAsset[] memory assets_) public initializer;
```

### refresh

Force updates in all collateral assets


```solidity
function refresh() public;
```

### register

Forbids registering a different asset for an ERC20 that is already registered


```solidity
function register(IAsset asset) external governance returns (bool);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|If the asset was moved from unregistered to registered|


### swapRegistered

Swap an asset that shares an ERC20 with a presently-registered asset, de-registering it
Fails if there is not an asset already registered for the ERC20


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

Return the Asset modelling this ERC20, or revert


```solidity
function toAsset(IERC20 erc20) external view returns (IAsset);
```

### toColl

Return the Collateral modelling this ERC20, or revert


```solidity
function toColl(IERC20 erc20) external view returns (ICollateral);
```

### isRegistered


```solidity
function isRegistered(IERC20 erc20) external view returns (bool);
```

### erc20s


```solidity
function erc20s() external view returns (IERC20[] memory erc20s_);
```

### getRegistry


```solidity
function getRegistry() external view returns (Registry memory reg);
```

### _register

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

