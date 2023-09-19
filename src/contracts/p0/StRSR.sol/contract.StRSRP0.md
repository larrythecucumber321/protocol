# StRSRP0
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/p0/StRSR.sol)

**Inherits:**
[IStRSR](/src/contracts/interfaces/IStRSR.sol/interface.IStRSR.md), [ComponentP0](/src/contracts/p0/mixins/Component.sol/abstract.ComponentP0.md), EIP712Upgradeable


## State Variables
### PERIOD

```solidity
uint48 public constant PERIOD = 12;
```


### MIN_UNSTAKING_DELAY

```solidity
uint48 public constant MIN_UNSTAKING_DELAY = PERIOD * 2;
```


### MAX_UNSTAKING_DELAY

```solidity
uint48 public constant MAX_UNSTAKING_DELAY = 31536000;
```


### MAX_REWARD_RATIO

```solidity
uint192 public constant MAX_REWARD_RATIO = 1e18;
```


### _nonces

```solidity
mapping(address => Counters.Counter) private _nonces;
```


### _PERMIT_TYPEHASH

```solidity
bytes32 private immutable _PERMIT_TYPEHASH =
    keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");
```


### _name

```solidity
string private _name;
```


### _symbol

```solidity
string private _symbol;
```


### balances

```solidity
mapping(address => uint256) private balances;
```


### allowances

```solidity
mapping(address => mapping(address => uint256)) private allowances;
```


### accounts

```solidity
EnumerableSet.AddressSet internal accounts;
```


### totalStaked

```solidity
uint256 internal totalStaked;
```


### rsrBacking

```solidity
uint256 internal rsrBacking;
```


### payoutLastPaid

```solidity
uint256 internal payoutLastPaid;
```


### rsrRewardsAtLastPayout

```solidity
uint256 internal rsrRewardsAtLastPayout;
```


### era

```solidity
uint256 internal era;
```


### withdrawals

```solidity
mapping(address => Withdrawal[]) public withdrawals;
```


### MIN_EXCHANGE_RATE

```solidity
uint192 private constant MIN_EXCHANGE_RATE = uint192(1e9);
```


### unstakingDelay

```solidity
uint48 public unstakingDelay;
```


### rewardRatio

```solidity
uint192 public rewardRatio;
```


## Functions
### init


```solidity
function init(IMain main_, string memory name_, string memory symbol_, uint48 unstakingDelay_, uint192 rewardRatio_)
    public
    initializer;
```

### payoutRewards

Assign reward payouts to the staker pool


```solidity
function payoutRewards() external notFrozen;
```

### stake

Stakes an RSR `amount` on the corresponding RToken to earn yield and over-collateralized
the system

*Staking continues while paused, without reward handouts*


```solidity
function stake(uint256 rsrAmount) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`rsrAmount`|`uint256`|{qRSR}|


### unstake

Begins a delayed unstaking for `amount` stRSR


```solidity
function unstake(uint256 stakeAmount) external notPausedOrFrozen;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`stakeAmount`|`uint256`|{qStRSR}|


### withdraw

Complete delayed staking for an account, up to but not including draft ID `endId`


```solidity
function withdraw(address account, uint256 endId) external notPausedOrFrozen;
```

### endIdForWithdraw

Return the maximum valid value of endId such that withdraw(endId) should immediately work


```solidity
function endIdForWithdraw(address account) external view returns (uint256);
```

### seizeRSR


```solidity
function seizeRSR(uint256 rsrAmount) external notPausedOrFrozen;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`rsrAmount`|`uint256`|{qRSR} seizedRSR might be dust-larger than rsrAmount due to rounding. seizedRSR will _not_ be smaller than rsrAmount.|


### bankruptStakers


```solidity
function bankruptStakers() internal returns (uint256 seizedRSR);
```

### bankruptWithdrawals


```solidity
function bankruptWithdrawals() internal returns (uint256 seizedRSR);
```

### exchangeRate


```solidity
function exchangeRate() public view returns (uint192);
```

### name


```solidity
function name() external view returns (string memory);
```

### symbol


```solidity
function symbol() external view returns (string memory);
```

### decimals


```solidity
function decimals() public pure returns (uint8);
```

### totalSupply


```solidity
function totalSupply() external view returns (uint256);
```

### balanceOf


```solidity
function balanceOf(address account) external view returns (uint256);
```

### transfer


```solidity
function transfer(address to, uint256 amount) external returns (bool);
```

### _transfer


```solidity
function _transfer(address from, address to, uint256 amount) private;
```

### allowance


```solidity
function allowance(address owner, address spender) public view returns (uint256);
```

### approve


```solidity
function approve(address spender, uint256 amount) public returns (bool);
```

### transferFrom


```solidity
function transferFrom(address from, address to, uint256 amount) public returns (bool);
```

### increaseAllowance


```solidity
function increaseAllowance(address spender, uint256 addedValue) external returns (bool);
```

### decreaseAllowance


```solidity
function decreaseAllowance(address spender, uint256 subtractedValue) external returns (bool);
```

### _approve


```solidity
function _approve(address owner, address spender, uint256 amount) private;
```

### _spendAllowance


```solidity
function _spendAllowance(address owner, address spender, uint256 amount) internal virtual;
```

### _payoutRewards

Assign reward payouts to the staker pool

*do this by effecting rsrBacking and payoutLastPaid as appropriate, given the current
value of rsrRewards()*


```solidity
function _payoutRewards() internal;
```

### stakeBeingWithdrawn


```solidity
function stakeBeingWithdrawn() internal view returns (uint256 total);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`total`|`uint256`|{qStakes} Total amount of qStRSR being withdrawn|


### rsrBeingWithdrawn


```solidity
function rsrBeingWithdrawn() internal view returns (uint256 total);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`total`|`uint256`|{qRSR} Total amount of qRSR being withdrawn|


### rsrRewards


```solidity
function rsrRewards() internal view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|{qRSR} The balance of RSR that this contract owns dedicated to future RSR rewards.|


### permit


```solidity
function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
    public
    virtual;
```

### nonces


```solidity
function nonces(address owner) public view virtual returns (uint256);
```

### DOMAIN_SEPARATOR


```solidity
function DOMAIN_SEPARATOR() external view returns (bytes32);
```

### _useNonce


```solidity
function _useNonce(address owner) internal virtual returns (uint256 current);
```

### setUnstakingDelay


```solidity
function setUnstakingDelay(uint48 val) public governance;
```

### setRewardRatio


```solidity
function setRewardRatio(uint192 val) public governance;
```

## Structs
### Withdrawal

```solidity
struct Withdrawal {
    address account;
    uint256 rsrAmount;
    uint256 stakeAmount;
    uint256 availableAt;
}
```

