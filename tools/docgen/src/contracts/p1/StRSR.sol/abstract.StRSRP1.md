# StRSRP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/p1/StRSR.sol)

**Inherits:**
Initializable, [ComponentP1](/tools/docgen/src/contracts/p1/mixins/Component.sol/abstract.ComponentP1.md), [IStRSR](/tools/docgen/src/contracts/interfaces/IStRSR.sol/interface.IStRSR.md), EIP712Upgradeable


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
uint192 public constant MAX_REWARD_RATIO = FIX_ONE;
```


### name

```solidity
string public name;
```


### symbol

```solidity
string public symbol;
```


### decimals

```solidity
uint8 public constant decimals = 18;
```


### assetRegistry

```solidity
IAssetRegistry private assetRegistry;
```


### backingManager

```solidity
IBackingManager private backingManager;
```


### basketHandler

```solidity
IBasketHandler private basketHandler;
```


### rsr

```solidity
IERC20 private rsr;
```


### era
=== Financial State: Stakes (balances) ===


```solidity
uint256 internal era;
```


### stakes

```solidity
mapping(uint256 => mapping(address => uint256)) private stakes;
```


### totalStakes

```solidity
uint256 internal totalStakes;
```


### stakeRSR

```solidity
uint256 internal stakeRSR;
```


### stakeRate

```solidity
uint192 public stakeRate;
```


### MAX_STAKE_RATE

```solidity
uint192 private constant MAX_STAKE_RATE = 1e9 * FIX_ONE;
```


### _allowances

```solidity
mapping(uint256 => mapping(address => mapping(address => uint256))) private _allowances;
```


### draftEra

```solidity
uint256 internal draftEra;
```


### draftQueues

```solidity
mapping(uint256 => mapping(address => CumulativeDraft[])) public draftQueues;
```


### firstRemainingDraft

```solidity
mapping(uint256 => mapping(address => uint256)) public firstRemainingDraft;
```


### totalDrafts

```solidity
uint256 internal totalDrafts;
```


### draftRSR

```solidity
uint256 internal draftRSR;
```


### draftRate

```solidity
uint192 public draftRate;
```


### MAX_DRAFT_RATE

```solidity
uint192 private constant MAX_DRAFT_RATE = 1e9 * FIX_ONE;
```


### _nonces

```solidity
mapping(address => CountersUpgradeable.Counter) private _nonces;
```


### _delegationNonces

```solidity
mapping(address => CountersUpgradeable.Counter) private _delegationNonces;
```


### _PERMIT_TYPEHASH

```solidity
bytes32 private constant _PERMIT_TYPEHASH =
    keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");
```


### unstakingDelay

```solidity
uint48 public unstakingDelay;
```


### rewardRatio

```solidity
uint192 public rewardRatio;
```


### payoutLastPaid

```solidity
uint48 public payoutLastPaid;
```


### rsrRewardsAtLastPayout

```solidity
uint256 internal rsrRewardsAtLastPayout;
```


### __gap
*This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps*


```solidity
uint256[30] private __gap;
```


## Functions
### init


```solidity
function init(IMain main_, string calldata name_, string calldata symbol_, uint48 unstakingDelay_, uint192 rewardRatio_)
    external
    initializer;
```

### payoutRewards

Assign reward payouts to the staker pool


```solidity
function payoutRewards() external notFrozen;
```

### stake

Stakes an RSR `amount` on the corresponding RToken to earn yield and over-collateralize
the system

*Staking continues while paused/frozen, without reward handouts*


```solidity
function stake(uint256 rsrAmount) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`rsrAmount`|`uint256`|{qRSR}|


### unstake

Begins a delayed unstaking for `amount` StRSR


```solidity
function unstake(uint256 stakeAmount) external notPausedOrFrozen;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`stakeAmount`|`uint256`|{qStRSR}|


### withdraw

Complete an account's unstaking; callable by anyone


```solidity
function withdraw(address account, uint256 endId) external notPausedOrFrozen;
```

### seizeRSR


```solidity
function seizeRSR(uint256 rsrAmount) external notPausedOrFrozen;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`rsrAmount`|`uint256`|{qRSR} Must seize at least `rsrAmount`, or revert|


### exchangeRate


```solidity
function exchangeRate() public view returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|D18{qRSR/qStRSR} The exchange rate between RSR and StRSR|


### endIdForWithdraw

Return the maximum value of endId such that withdraw(endId) can immediately work


```solidity
function endIdForWithdraw(address account) external view returns (uint256);
```

### draftQueueLen

Used by FacadeP1


```solidity
function draftQueueLen(uint256 era_, address account) external view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The length of the draft queue for an account in an era|


### getDraftRSR


```solidity
function getDraftRSR() external view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|{qDrafts} The amount of RSR currently being withdrawn|


### getStakeRSR


```solidity
function getStakeRSR() external view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|{qRSR} The amount of RSR currently being staked and earning rewards|


### getTotalDrafts


```solidity
function getTotalDrafts() external view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|{qDrafts} The amount of StRSR currently being withdrawn|


### _payoutRewards

Assign reward payouts to the staker pool

*do this by effecting stakeRSR and payoutLastPaid as appropriate, given the current
value of rsrRewards()*

*perhaps astonishingly, this _isn't_ a refresher*


```solidity
function _payoutRewards() internal;
```

### pushDraft


```solidity
function pushDraft(address account, uint256 rsrAmount) internal returns (uint256 index, uint64 availableAt);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`account`|`address`||
|`rsrAmount`|`uint256`|{qRSR}|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`index`|`uint256`|The index of the draft|
|`availableAt`|`uint64`|{s} The timestamp the cumulative draft vests|


### beginEra

Zero all stakes and withdrawals
Overriden in StRSRVotes to handle rebases


```solidity
function beginEra() internal virtual;
```

### beginDraftEra


```solidity
function beginDraftEra() internal virtual;
```

### rsrRewards


```solidity
function rsrRewards() internal view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|{qRSR} The balance of RSR that this contract owns dedicated to future RSR rewards.|


### totalSupply


```solidity
function totalSupply() public view returns (uint256);
```

### balanceOf


```solidity
function balanceOf(address account) public view returns (uint256);
```

### allowance


```solidity
function allowance(address owner, address spender) public view virtual override returns (uint256);
```

### transfer


```solidity
function transfer(address to, uint256 amount) public returns (bool);
```

### approve

NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
`transferFrom`. This is semantically equivalent to an infinite approval.


```solidity
function approve(address spender, uint256 amount) public returns (bool);
```

### transferFrom

NOTE: Does not update the allowance if the current allowance
is the maximum `uint256`.


```solidity
function transferFrom(address from, address to, uint256 amount) public returns (bool);
```

### increaseAllowance


```solidity
function increaseAllowance(address spender, uint256 addedValue) public returns (bool);
```

### decreaseAllowance


```solidity
function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool);
```

### _transfer


```solidity
function _transfer(address from, address to, uint256 amount) internal;
```

### _mint


```solidity
function _mint(address account, uint256 amount) internal virtual;
```

### _burn


```solidity
function _burn(address account, uint256 amount) internal virtual;
```

### _approve


```solidity
function _approve(address owner, address spender, uint256 amount) internal;
```

### _spendAllowance


```solidity
function _spendAllowance(address owner, address spender, uint256 amount) internal;
```

### _afterTokenTransfer

Used by StRSRVotes to track voting


```solidity
function _afterTokenTransfer(address, address to, uint256) internal virtual;
```

### permit


```solidity
function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
    public;
```

### nonces


```solidity
function nonces(address owner) public view returns (uint256);
```

### delegationNonces


```solidity
function delegationNonces(address owner) public view returns (uint256);
```

### DOMAIN_SEPARATOR


```solidity
function DOMAIN_SEPARATOR() external view returns (bytes32);
```

### _useNonce


```solidity
function _useNonce(address owner) internal returns (uint256 current);
```

### _useDelegationNonce


```solidity
function _useDelegationNonce(address owner) internal returns (uint256 current);
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
### CumulativeDraft

```solidity
struct CumulativeDraft {
    uint176 drafts;
    uint64 availableAt;
}
```

