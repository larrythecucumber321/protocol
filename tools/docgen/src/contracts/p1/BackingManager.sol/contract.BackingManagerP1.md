# BackingManagerP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/p1/BackingManager.sol)

**Inherits:**
[TradingP1](/tools/docgen/src/contracts/p1/mixins/Trading.sol/abstract.TradingP1.md), [IBackingManager](/tools/docgen/src/contracts/interfaces/IBackingManager.sol/interface.IBackingManager.md)

The backing manager holds + manages the backing for an RToken


## State Variables
### assetRegistry

```solidity
IAssetRegistry private assetRegistry;
```


### basketHandler

```solidity
IBasketHandler private basketHandler;
```


### distributor

```solidity
IDistributor private distributor;
```


### rToken

```solidity
IRToken private rToken;
```


### rsr

```solidity
IERC20 private rsr;
```


### stRSR

```solidity
IStRSR private stRSR;
```


### rsrTrader

```solidity
IRevenueTrader private rsrTrader;
```


### rTokenTrader

```solidity
IRevenueTrader private rTokenTrader;
```


### MAX_TRADING_DELAY

```solidity
uint48 public constant MAX_TRADING_DELAY = 31536000;
```


### MAX_BACKING_BUFFER

```solidity
uint192 public constant MAX_BACKING_BUFFER = FIX_ONE;
```


### tradingDelay

```solidity
uint48 public tradingDelay;
```


### backingBuffer

```solidity
uint192 public backingBuffer;
```


### __gap
*This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps*


```solidity
uint256[41] private __gap;
```


## Functions
### init


```solidity
function init(
    IMain main_,
    uint48 tradingDelay_,
    uint192 backingBuffer_,
    uint192 maxTradeSlippage_,
    uint192 minTradeVolume_
) external initializer;
```

### grantRTokenAllowance

Give RToken max allowance over the registered token `erc20`


```solidity
function grantRTokenAllowance(IERC20 erc20) external notFrozen;
```

### manageTokens

Maintain the overall backing policy; handout assets otherwise


```solidity
function manageTokens(IERC20[] calldata erc20s) external notPausedOrFrozen;
```

### manageTokensSortedOrder

Maintain the overall backing policy; handout assets otherwise

*Tokens must be in sorted order!*

*Performs a uniqueness check on the erc20s list in O(n)*


```solidity
function manageTokensSortedOrder(IERC20[] calldata erc20s) external notPausedOrFrozen;
```

### _manageTokens

Maintain the overall backing policy; handout assets otherwise


```solidity
function _manageTokens(IERC20[] calldata erc20s) private;
```

### handoutExcessAssets

Send excess assets to the RSR and RToken traders


```solidity
function handoutExcessAssets(IERC20[] calldata erc20s, uint192 basketsHeldBottom) private;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`erc20s`|`IERC20[]`||
|`basketsHeldBottom`|`uint192`|{BU} The number of full basket units held by the BackingManager|


### compromiseBasketsNeeded

Assumptions:
- Fully collateralized. All collateral meet balance requirements.
- All backing capital is held at BackingManager's address. No capital is out on-trade
- Neither RToken nor RSR are in the basket
- Each address in erc20s is unique
Steps:
1. Forward all held RSR to the RSR trader to prevent using it for RToken appreciation
(action: send rsr().balanceOf(this) to rsrTrader)
2. Using whatever balances of collateral are there, fast-issue all RToken possible.
(in detail: mint RToken and set basketsNeeded so that the BU/rtok exchange rate is
roughly constant, and strictly does not decrease,
3. Handout all surplus asset balances (including collateral and RToken) to the
RSR and RToken traders according to the distribution totals.
Compromise on how many baskets are needed in order to recollateralize-by-accounting


```solidity
function compromiseBasketsNeeded(uint192 basketsHeldBottom, uint192 basketsNeeded) private;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`basketsHeldBottom`|`uint192`|{BU} The number of full basket units held by the BackingManager|
|`basketsNeeded`|`uint192`|{BU} RToken.basketsNeeded()|


### setTradingDelay


```solidity
function setTradingDelay(uint48 val) public governance;
```

### setBackingBuffer


```solidity
function setBackingBuffer(uint192 val) public governance;
```

