# IStRSR
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IStRSR.sol)

**Inherits:**
IERC20MetadataUpgradeable, IERC20PermitUpgradeable, [IComponent](/contracts/interfaces/IComponent.sol/interface.IComponent.md)

An ERC20 token representing shares of the RSR over-collateralization pool.
StRSR permits the BackingManager to take RSR in times of need. In return, the BackingManager
benefits the StRSR pool with RSR rewards purchased with a portion of its revenue.
In the absence of collateral default or losses due to slippage, StRSR should have a
monotonically increasing exchange rate with respect to RSR, meaning that over time
StRSR is redeemable for more RSR. It is non-rebasing.


## Functions
### init


```solidity
function init(IMain main_, string memory name_, string memory symbol_, uint48 unstakingDelay_, uint192 rewardRatio_)
    external;
```

### payoutRewards

Gather and payout rewards from rsrTrader


```solidity
function payoutRewards() external;
```

### stake

Stakes an RSR `amount` on the corresponding RToken to earn yield and over-collateralized
the system


```solidity
function stake(uint256 amount) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint256`|{qRSR}|


### unstake

Begins a delayed unstaking for `amount` stRSR


```solidity
function unstake(uint256 amount) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint256`|{qStRSR}|


### withdraw

Complete delayed unstaking for the account, up to (but not including!) `endId`


```solidity
function withdraw(address account, uint256 endId) external;
```

### seizeRSR

Seize RSR, only callable by main.backingManager()


```solidity
function seizeRSR(uint256 amount) external;
```

### endIdForWithdraw

Return the maximum valid value of endId such that withdraw(endId) should immediately work


```solidity
function endIdForWithdraw(address account) external view returns (uint256 endId);
```

### exchangeRate


```solidity
function exchangeRate() external view returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{qRSR/qStRSR} The exchange rate between RSR and StRSR|


## Events
### Staked
Emitted when RSR is staked


```solidity
event Staked(uint256 indexed era, address indexed staker, uint256 rsrAmount, uint256 indexed stRSRAmount);
```

### UnstakingStarted
Emitted when an unstaking is started


```solidity
event UnstakingStarted(
    uint256 indexed draftId,
    uint256 indexed draftEra,
    address indexed staker,
    uint256 rsrAmount,
    uint256 stRSRAmount,
    uint256 availableAt
);
```

### UnstakingCompleted
Emitted when RSR is unstaked


```solidity
event UnstakingCompleted(
    uint256 indexed firstId, uint256 indexed endId, uint256 draftEra, address indexed staker, uint256 rsrAmount
);
```

### ExchangeRateSet
Emitted whenever the exchange rate changes


```solidity
event ExchangeRateSet(uint192 indexed oldVal, uint192 indexed newVal);
```

### RewardsPaid
Emitted whenever RSR are paids out


```solidity
event RewardsPaid(uint256 indexed rsrAmt);
```

### AllBalancesReset
Emitted if all the RSR in the staking pool is seized and all balances are reset to zero.


```solidity
event AllBalancesReset(uint256 indexed newEra);
```

### AllUnstakingReset
Emitted if all the RSR in the unstakin pool is seized, and all ongoing unstaking is voided.


```solidity
event AllUnstakingReset(uint256 indexed newEra);
```

### UnstakingDelaySet

```solidity
event UnstakingDelaySet(uint48 indexed oldVal, uint48 indexed newVal);
```

### RewardRatioSet

```solidity
event RewardRatioSet(uint192 indexed oldVal, uint192 indexed newVal);
```

