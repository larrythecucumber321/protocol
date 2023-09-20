# RevenueTraderP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/p1/RevenueTrader.sol)

**Inherits:**
[TradingP1](/tools/docgen/src/contracts/p1/mixins/Trading.sol/abstract.TradingP1.md), [IRevenueTrader](/tools/docgen/src/contracts/interfaces/IRevenueTrader.sol/interface.IRevenueTrader.md)

Trader Component that converts all asset balances at its address to a
single target asset and sends this asset to the Distributor.


## State Variables
### tokenToBuy

```solidity
IERC20 public tokenToBuy;
```


### assetRegistry

```solidity
IAssetRegistry private assetRegistry;
```


### distributor

```solidity
IDistributor private distributor;
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


```solidity
function init(IMain main_, IERC20 tokenToBuy_, uint192 maxTradeSlippage_, uint192 minTradeVolume_)
    external
    initializer;
```

### manageToken

If erc20 is tokenToBuy, distribute it; else, sell it for tokenToBuy

*Intended to be used with multicall*


```solidity
function manageToken(IERC20 erc20) external notPausedOrFrozen;
```

