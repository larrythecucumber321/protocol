# IBackingManager
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IBackingManager.sol)

**Inherits:**
[IComponent](/tools/docgen/src/contracts/interfaces/IComponent.sol/interface.IComponent.md), [ITrading](/tools/docgen/src/contracts/interfaces/ITrading.sol/interface.ITrading.md)

The BackingManager handles changes in the ERC20 balances that back an RToken.
- It computes which trades to perform, if any, and initiates these trades with the Broker.
- If already collateralized, excess assets are transferred to RevenueTraders.
`manageTokens(erc20s)` and `manageTokensSortedOrder(erc20s)` are handles for getting at the
same underlying functionality. The former allows an ERC20 list in any order, while the
latter requires a sorted array, and executes in O(n) rather than O(n^2) time. In the
vast majority of cases we expect the the O(n^2) function to be acceptable.


## Functions
### init


```solidity
function init(
    IMain main_,
    uint48 tradingDelay_,
    uint192 backingBuffer_,
    uint192 maxTradeSlippage_,
    uint192 minTradeVolume_
) external;
```

### grantRTokenAllowance


```solidity
function grantRTokenAllowance(IERC20) external;
```

### manageTokens

Maintain the overall backing policy; handout assets otherwise

*Performs a uniqueness check on the erc20s list in O(n^2)*


```solidity
function manageTokens(IERC20[] memory erc20s) external;
```

### manageTokensSortedOrder

Maintain the overall backing policy; handout assets otherwise

*Tokens must be in sorted order!*

*Performs a uniqueness check on the erc20s list in O(n)*


```solidity
function manageTokensSortedOrder(IERC20[] memory erc20s) external;
```

## Events
### TradingDelaySet

```solidity
event TradingDelaySet(uint48 indexed oldVal, uint48 indexed newVal);
```

### BackingBufferSet

```solidity
event BackingBufferSet(uint192 indexed oldVal, uint192 indexed newVal);
```

