# StaticATokenLM
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/assets/aave/StaticATokenLM.sol)

**Inherits:**
[ReentrancyGuard](/tools/docgen/src/contracts/plugins/assets/aave/ReentrancyGuard.sol/abstract.ReentrancyGuard.md), [ERC20](/tools/docgen/src/contracts/plugins/assets/aave/ERC20.sol/contract.ERC20.md), [IStaticATokenLM](/tools/docgen/src/contracts/plugins/assets/aave/IStaticATokenLM.sol/interface.IStaticATokenLM.md)

**Author:**
Aave
From: https://github.com/aave/protocol-v2/blob/238e5af2a95c3fbb83b0c8f44501ed2541215122/contracts/protocol/tokenization/StaticATokenLM.sol#L255

Wrapper token that allows to deposit tokens on the Aave protocol and receive
a token which balance doesn't increase automatically, but uses an ever-increasing exchange rate.
The token support claiming liquidity mining rewards from the Aave system.


## State Variables
### EIP712_REVISION

```solidity
bytes public constant EIP712_REVISION = bytes("1");
```


### EIP712_DOMAIN

```solidity
bytes32 internal constant EIP712_DOMAIN =
    keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");
```


### PERMIT_TYPEHASH

```solidity
bytes32 public constant PERMIT_TYPEHASH =
    keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");
```


### METADEPOSIT_TYPEHASH

```solidity
bytes32 public constant METADEPOSIT_TYPEHASH = keccak256(
    "Deposit(address depositor,address recipient,uint256 value,uint16 referralCode,bool fromUnderlying,uint256 nonce,uint256 deadline)"
);
```


### METAWITHDRAWAL_TYPEHASH

```solidity
bytes32 public constant METAWITHDRAWAL_TYPEHASH = keccak256(
    "Withdraw(address owner,address recipient,uint256 staticAmount,uint256 dynamicAmount,bool toUnderlying,uint256 nonce,uint256 deadline)"
);
```


### STATIC_ATOKEN_LM_REVISION

```solidity
uint256 public constant STATIC_ATOKEN_LM_REVISION = 0x1;
```


### LENDING_POOL

```solidity
ILendingPool public override LENDING_POOL;
```


### INCENTIVES_CONTROLLER

```solidity
IAaveIncentivesController public override INCENTIVES_CONTROLLER;
```


### ATOKEN

```solidity
IERC20 public override ATOKEN;
```


### ASSET

```solidity
IERC20 public override ASSET;
```


### REWARD_TOKEN

```solidity
IERC20 public override REWARD_TOKEN;
```


### _nonces

```solidity
mapping(address => uint256) public _nonces;
```


### _accRewardsPerToken

```solidity
uint256 internal _accRewardsPerToken;
```


### _lifetimeRewardsClaimed

```solidity
uint256 internal _lifetimeRewardsClaimed;
```


### _lifetimeRewards

```solidity
uint256 internal _lifetimeRewards;
```


### _lastRewardBlock

```solidity
uint256 internal _lastRewardBlock;
```


### _userSnapshotRewardsPerToken

```solidity
mapping(address => uint256) private _userSnapshotRewardsPerToken;
```


### _unclaimedRewards

```solidity
mapping(address => uint256) private _unclaimedRewards;
```


## Functions
### constructor


```solidity
constructor(ILendingPool pool, address aToken, string memory staticATokenName, string memory staticATokenSymbol)
    public;
```

### deposit

Deposits `ASSET` in the Aave protocol and mints static aTokens to msg.sender


```solidity
function deposit(address recipient, uint256 amount, uint16 referralCode, bool fromUnderlying)
    external
    override
    nonReentrant
    returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`recipient`|`address`|The address that will receive the static aTokens|
|`amount`|`uint256`|The amount of underlying `ASSET` to deposit (e.g. deposit of 100 USDC)|
|`referralCode`|`uint16`|Code used to register the integrator originating the operation, for potential rewards. 0 if the action is executed directly by the user, without any middle-man|
|`fromUnderlying`|`bool`|bool - `true` if the msg.sender comes with underlying tokens (e.g. USDC) - `false` if the msg.sender comes already with aTokens (e.g. aUSDC)|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|uint256 The amount of StaticAToken minted, static balance|


### withdraw

Burns `amount` of static aToken, with recipient receiving the corresponding amount of `ASSET`


```solidity
function withdraw(address recipient, uint256 amount, bool toUnderlying)
    external
    override
    nonReentrant
    returns (uint256, uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`recipient`|`address`|The address that will receive the amount of `ASSET` withdrawn from the Aave protocol|
|`amount`|`uint256`|The amount to withdraw, in static balance of StaticAToken|
|`toUnderlying`|`bool`|bool - `true` for the recipient to get underlying tokens (e.g. USDC) - `false` for the recipient to get aTokens (e.g. aUSDC)|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|amountToBurn: StaticATokens burnt, static balance|
|`<none>`|`uint256`|amountToWithdraw: underlying/aToken send to `recipient`, dynamic balance|


### withdrawDynamicAmount

Burns `amount` of static aToken, with recipient receiving the corresponding amount of `ASSET`


```solidity
function withdrawDynamicAmount(address recipient, uint256 amount, bool toUnderlying)
    external
    override
    nonReentrant
    returns (uint256, uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`recipient`|`address`|The address that will receive the amount of `ASSET` withdrawn from the Aave protocol|
|`amount`|`uint256`|The amount to withdraw, in dynamic balance of aToken/underlying asset|
|`toUnderlying`|`bool`|bool - `true` for the recipient to get underlying tokens (e.g. USDC) - `false` for the recipient to get aTokens (e.g. aUSDC)|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|amountToBurn: StaticATokens burnt, static balance|
|`<none>`|`uint256`|amountToWithdraw: underlying/aToken send to `recipient`, dynamic balance|


### permit

Implements the permit function as for
https://github.com/ethereum/EIPs/blob/8a34d644aacf0f9f8f00815307fd7dd5da07655f/EIPS/eip-2612.md


```solidity
function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
    external
    override;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`owner`|`address`|The owner of the funds|
|`spender`|`address`|The spender|
|`value`|`uint256`|The amount|
|`deadline`|`uint256`|The deadline timestamp, type(uint256).max for max deadline|
|`v`|`uint8`|Signature param|
|`r`|`bytes32`|Signature param|
|`s`|`bytes32`|Signature param|


### metaDeposit

Allows to deposit on Aave via meta-transaction
https://github.com/ethereum/EIPs/blob/8a34d644aacf0f9f8f00815307fd7dd5da07655f/EIPS/eip-2612.md


```solidity
function metaDeposit(
    address depositor,
    address recipient,
    uint256 value,
    uint16 referralCode,
    bool fromUnderlying,
    uint256 deadline,
    SignatureParams calldata sigParams
) external override nonReentrant returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`depositor`|`address`|Address from which the funds to deposit are going to be pulled|
|`recipient`|`address`|Address that will receive the staticATokens, in the average case, same as the `depositor`|
|`value`|`uint256`|The amount to deposit|
|`referralCode`|`uint16`|Code used to register the integrator originating the operation, for potential rewards. 0 if the action is executed directly by the user, without any middle-man|
|`fromUnderlying`|`bool`|bool - `true` if the msg.sender comes with underlying tokens (e.g. USDC) - `false` if the msg.sender comes already with aTokens (e.g. aUSDC)|
|`deadline`|`uint256`|The deadline timestamp, type(uint256).max for max deadline|
|`sigParams`|`SignatureParams`|Signature params: v,r,s|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|uint256 The amount of StaticAToken minted, static balance|


### metaWithdraw

Allows to withdraw from Aave via meta-transaction
https://github.com/ethereum/EIPs/blob/8a34d644aacf0f9f8f00815307fd7dd5da07655f/EIPS/eip-2612.md


```solidity
function metaWithdraw(
    address owner,
    address recipient,
    uint256 staticAmount,
    uint256 dynamicAmount,
    bool toUnderlying,
    uint256 deadline,
    SignatureParams calldata sigParams
) external override nonReentrant returns (uint256, uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`owner`|`address`|Address owning the staticATokens|
|`recipient`|`address`|Address that will receive the underlying withdrawn from Aave|
|`staticAmount`|`uint256`|The amount of staticAToken to withdraw. If > 0, `dynamicAmount` needs to be 0|
|`dynamicAmount`|`uint256`|The amount of underlying/aToken to withdraw. If > 0, `staticAmount` needs to be 0|
|`toUnderlying`|`bool`|bool - `true` for the recipient to get underlying tokens (e.g. USDC) - `false` for the recipient to get aTokens (e.g. aUSDC)|
|`deadline`|`uint256`|The deadline timestamp, type(uint256).max for max deadline|
|`sigParams`|`SignatureParams`|Signature params: v,r,s|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|amountToBurn: StaticATokens burnt, static balance|
|`<none>`|`uint256`|amountToWithdraw: underlying/aToken send to `recipient`, dynamic balance|


### dynamicBalanceOf

Utility method to get the current aToken balance of an user, from his staticAToken balance


```solidity
function dynamicBalanceOf(address account) external view override returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`account`|`address`|The address of the user|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|uint256 The aToken balance|


### staticToDynamicAmount

Converts a static amount (scaled balance on aToken) to the aToken/underlying value,
using the current liquidity index on Aave


```solidity
function staticToDynamicAmount(uint256 amount) external view override returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint256`|The amount to convert from|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|uint256 The dynamic amount|


### dynamicToStaticAmount

Converts an aToken or underlying amount to the what it is denominated on the aToken as
scaled balance, function of the principal and the liquidity index


```solidity
function dynamicToStaticAmount(uint256 amount) external view override returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint256`|The amount to convert from|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|uint256 The static (scaled) amount|


### rate

Returns the Aave liquidity index of the underlying aToken, denominated rate here
as it can be considered as an ever-increasing exchange rate


```solidity
function rate() public view override returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The liquidity index|


### getDomainSeparator

Function to return a dynamic domain separator, in order to be compatible with forks changing chainId


```solidity
function getDomainSeparator() public view override returns (bytes32);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bytes32`|bytes32 The domain separator|


### _dynamicToStaticAmount


```solidity
function _dynamicToStaticAmount(uint256 amount, uint256 rate_) internal pure returns (uint256);
```

### _staticToDynamicAmount


```solidity
function _staticToDynamicAmount(uint256 amount, uint256 rate_) internal pure returns (uint256);
```

### _deposit


```solidity
function _deposit(address depositor, address recipient, uint256 amount, uint16 referralCode, bool fromUnderlying)
    internal
    returns (uint256);
```

### _withdraw


```solidity
function _withdraw(address owner, address recipient, uint256 staticAmount, uint256 dynamicAmount, bool toUnderlying)
    internal
    returns (uint256, uint256);
```

### _beforeTokenTransfer

Updates rewards for senders and receiver in a transfer (not updating rewards for address(0))


```solidity
function _beforeTokenTransfer(address from, address to, uint256) internal override;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`from`|`address`|The address of the sender of tokens|
|`to`|`address`|The address of the receiver of tokens|
|`<none>`|`uint256`||


### _updateRewards

Updates virtual internal accounting of rewards.


```solidity
function _updateRewards() internal;
```

### _collectAndUpdateRewards


```solidity
function _collectAndUpdateRewards() internal;
```

### collectAndUpdateRewards

Claims rewards from `INCENTIVES_CONTROLLER` and updates internal accounting of rewards.


```solidity
function collectAndUpdateRewards() external override nonReentrant;
```

### _claimRewardsOnBehalf

Claim rewards on behalf of a user and send them to a receiver


```solidity
function _claimRewardsOnBehalf(address onBehalfOf, address receiver, bool forceUpdate) internal;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`onBehalfOf`|`address`|The address to claim on behalf of|
|`receiver`|`address`|The address to receive the rewards|
|`forceUpdate`|`bool`|Flag to retrieve latest rewards from `INCENTIVES_CONTROLLER`|


### claimRewardsOnBehalf


```solidity
function claimRewardsOnBehalf(address onBehalfOf, address receiver, bool forceUpdate) external override nonReentrant;
```

### claimRewards


```solidity
function claimRewards(address receiver, bool forceUpdate) external override nonReentrant;
```

### claimRewardsToSelf


```solidity
function claimRewardsToSelf(bool forceUpdate) external override nonReentrant;
```

### _updateUserSnapshotRewardsPerToken

Update the rewardDebt for a user with balance as his balance


```solidity
function _updateUserSnapshotRewardsPerToken(address user) internal;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`user`|`address`|The user to update|


### _updateUser

Adding the pending rewards to the unclaimed for specific user and updating user index


```solidity
function _updateUser(address user) internal;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`user`|`address`|The address of the user to update|


### _getPendingRewards

Compute the pending in RAY (rounded down). Pending is the amount to add (not yet unclaimed) rewards in RAY (rounded down).


```solidity
function _getPendingRewards(address user, uint256 balance, bool fresh) internal view returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`user`|`address`|The user to compute for|
|`balance`|`uint256`|The balance of the user|
|`fresh`|`bool`|Flag to account for rewards not claimed by contract yet|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The amound of pending rewards in RAY|


### _getClaimableRewards

Compute the claimable rewards for a user


```solidity
function _getClaimableRewards(address user, uint256 balance, bool fresh) internal view returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`user`|`address`|The address of the user|
|`balance`|`uint256`|The balance of the user in WAD|
|`fresh`|`bool`|Flag to account for rewards not claimed by contract yet|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The total rewards that can be claimed by the user (if `fresh` flag true, after updating rewards)|


### getTotalClaimableRewards

Get the total claimable rewards of the contract.


```solidity
function getTotalClaimableRewards() external view override returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The current balance + pending rewards from the `_incentivesController`|


### getClaimableRewards

Get the total claimable rewards for a user in WAD


```solidity
function getClaimableRewards(address user) external view override returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`user`|`address`|The address of the user|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The claimable amount of rewards in WAD|


### getUnclaimedRewards

The unclaimed rewards for a user in WAD


```solidity
function getUnclaimedRewards(address user) external view override returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`user`|`address`|The address of the user|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The unclaimed amount of rewards in WAD|


### getAccRewardsPerToken


```solidity
function getAccRewardsPerToken() external view override returns (uint256);
```

### getLifetimeRewardsClaimed


```solidity
function getLifetimeRewardsClaimed() external view override returns (uint256);
```

### getLifetimeRewards


```solidity
function getLifetimeRewards() external view override returns (uint256);
```

### getLastRewardBlock


```solidity
function getLastRewardBlock() external view override returns (uint256);
```

### getIncentivesController


```solidity
function getIncentivesController() external view override returns (IAaveIncentivesController);
```

### UNDERLYING_ASSET_ADDRESS


```solidity
function UNDERLYING_ASSET_ADDRESS() external view override returns (address);
```

