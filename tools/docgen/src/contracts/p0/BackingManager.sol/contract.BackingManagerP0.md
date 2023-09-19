# BackingManagerP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p0/BackingManager.sol)

**Inherits:**
[TradingP0](/tools/docgen/src/contracts/p0/mixins/Trading.sol/abstract.TradingP0.md), [IBackingManager](/tools/docgen/src/contracts/interfaces/IBackingManager.sol/interface.IBackingManager.md)

The backing manager holds + manages the backing for an RToken


## State Variables
### MAX_TRADING_DELAY

```solidity
uint48 public constant MAX_TRADING_DELAY = 31536000;
```


### MAX_BACKING_BUFFER

```solidity
uint192 public constant MAX_BACKING_BUFFER = 1e18;
```


### tradingDelay

```solidity
uint48 public tradingDelay;
```


### backingBuffer

```solidity
uint192 public backingBuffer;
```


## Functions
### init


```solidity
function init(
    IMain main_,
    uint48 tradingDelay_,
    uint192 backingBuffer_,
    uint192 maxTradeSlippage_,
    uint192 maxTradeVolume_
) public initializer;
```

### grantRTokenAllowance

*Performs a uniqueness check on the erc20s list in O(n^2)*


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


```solidity
function _manageTokens(IERC20[] calldata erc20s) private;
```

### handoutExcessAssets

Send excess assets to the RSR and RToken traders


```solidity
function handoutExcessAssets(IERC20[] calldata erc20s, uint192 wholeBasketsHeld) private;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`erc20s`|`IERC20[]`||
|`wholeBasketsHeld`|`uint192`|{BU} The number of full basket units held by the BackingManager|


### compromiseBasketsNeeded

Compromise on how many baskets are needed in order to recollateralize-by-accounting


```solidity
function compromiseBasketsNeeded(uint192 wholeBasketsHeld) private;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`wholeBasketsHeld`|`uint192`|{BU} The number of full basket units held by the BackingManager|


### setTradingDelay


```solidity
function setTradingDelay(uint48 val) public governance;
```

### setBackingBuffer


```solidity
function setBackingBuffer(uint192 val) public governance;
```

