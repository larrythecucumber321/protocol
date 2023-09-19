# ComponentRegistry
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/mixins/ComponentRegistry.sol)

**Inherits:**
Initializable, [Auth](/tools/docgen/src/contracts/mixins/Auth.sol/abstract.Auth.md), [IComponentRegistry](/tools/docgen/src/contracts/interfaces/IMain.sol/interface.IComponentRegistry.md)


## State Variables
### rToken

```solidity
IRToken public rToken;
```


### stRSR

```solidity
IStRSR public stRSR;
```


### assetRegistry

```solidity
IAssetRegistry public assetRegistry;
```


### basketHandler

```solidity
IBasketHandler public basketHandler;
```


### backingManager

```solidity
IBackingManager public backingManager;
```


### distributor

```solidity
IDistributor public distributor;
```


### rsrTrader

```solidity
IRevenueTrader public rsrTrader;
```


### rTokenTrader

```solidity
IRevenueTrader public rTokenTrader;
```


### furnace

```solidity
IFurnace public furnace;
```


### broker

```solidity
IBroker public broker;
```


### __gap
*This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps*


```solidity
uint256[40] private __gap;
```


## Functions
### __ComponentRegistry_init


```solidity
function __ComponentRegistry_init(Components memory components_) internal onlyInitializing;
```

### _setRToken


```solidity
function _setRToken(IRToken val) private;
```

### _setStRSR


```solidity
function _setStRSR(IStRSR val) private;
```

### _setAssetRegistry


```solidity
function _setAssetRegistry(IAssetRegistry val) private;
```

### _setBasketHandler


```solidity
function _setBasketHandler(IBasketHandler val) private;
```

### _setBackingManager


```solidity
function _setBackingManager(IBackingManager val) private;
```

### _setDistributor


```solidity
function _setDistributor(IDistributor val) private;
```

### _setRSRTrader


```solidity
function _setRSRTrader(IRevenueTrader val) private;
```

### _setRTokenTrader


```solidity
function _setRTokenTrader(IRevenueTrader val) private;
```

### _setFurnace


```solidity
function _setFurnace(IFurnace val) private;
```

### _setBroker


```solidity
function _setBroker(IBroker val) private;
```

