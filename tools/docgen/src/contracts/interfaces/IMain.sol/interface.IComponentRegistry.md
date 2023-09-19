# IComponentRegistry
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IMain.sol)


## Functions
### rToken


```solidity
function rToken() external view returns (IRToken);
```

### stRSR


```solidity
function stRSR() external view returns (IStRSR);
```

### assetRegistry


```solidity
function assetRegistry() external view returns (IAssetRegistry);
```

### basketHandler


```solidity
function basketHandler() external view returns (IBasketHandler);
```

### backingManager


```solidity
function backingManager() external view returns (IBackingManager);
```

### distributor


```solidity
function distributor() external view returns (IDistributor);
```

### rsrTrader


```solidity
function rsrTrader() external view returns (IRevenueTrader);
```

### rTokenTrader


```solidity
function rTokenTrader() external view returns (IRevenueTrader);
```

### furnace


```solidity
function furnace() external view returns (IFurnace);
```

### broker


```solidity
function broker() external view returns (IBroker);
```

## Events
### RTokenSet

```solidity
event RTokenSet(IRToken indexed oldVal, IRToken indexed newVal);
```

### StRSRSet

```solidity
event StRSRSet(IStRSR indexed oldVal, IStRSR indexed newVal);
```

### AssetRegistrySet

```solidity
event AssetRegistrySet(IAssetRegistry indexed oldVal, IAssetRegistry indexed newVal);
```

### BasketHandlerSet

```solidity
event BasketHandlerSet(IBasketHandler indexed oldVal, IBasketHandler indexed newVal);
```

### BackingManagerSet

```solidity
event BackingManagerSet(IBackingManager indexed oldVal, IBackingManager indexed newVal);
```

### DistributorSet

```solidity
event DistributorSet(IDistributor indexed oldVal, IDistributor indexed newVal);
```

### RSRTraderSet

```solidity
event RSRTraderSet(IRevenueTrader indexed oldVal, IRevenueTrader indexed newVal);
```

### RTokenTraderSet

```solidity
event RTokenTraderSet(IRevenueTrader indexed oldVal, IRevenueTrader indexed newVal);
```

### FurnaceSet

```solidity
event FurnaceSet(IFurnace indexed oldVal, IFurnace indexed newVal);
```

### BrokerSet

```solidity
event BrokerSet(IBroker indexed oldVal, IBroker indexed newVal);
```

