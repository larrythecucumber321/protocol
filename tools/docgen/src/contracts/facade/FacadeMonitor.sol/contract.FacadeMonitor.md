# FacadeMonitor
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/facade/FacadeMonitor.sol)

A UX-friendly layer for reading out the state of an RToken, specifically for the Monitor.


## Functions
### getTradesForBackingManager


```solidity
function getTradesForBackingManager(RTokenP1 rToken) external returns (TradeResponse memory response);
```

### getTradesForRevenueTraders


```solidity
function getTradesForRevenueTraders(RTokenP1 rToken)
    external
    returns (TradeResponse memory rTokenTraderResponse, TradeResponse memory rsrTraderResponse);
```

### getTradesForTrader


```solidity
function getTradesForTrader(RevenueTraderP1 trader, IERC20[] memory erc20s)
    internal
    returns (TradeResponse memory response);
```

## Structs
### TradeResponse

```solidity
struct TradeResponse {
    IERC20[] tradesToBeSettled;
    IERC20[] tradesToBeStarted;
}
```

