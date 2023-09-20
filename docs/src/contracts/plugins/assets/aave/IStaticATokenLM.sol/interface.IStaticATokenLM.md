# IStaticATokenLM
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/aave/IStaticATokenLM.sol)

**Inherits:**
[IERC20](/contracts/plugins/mocks/vendor/EasyAuction.sol/interface.IERC20.md)


## Functions
### deposit

Deposits `ASSET` in the Aave protocol and mints static aTokens to msg.sender


```solidity
function deposit(address recipient, uint256 amount, uint16 referralCode, bool fromUnderlying)
    external
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
function withdraw(address recipient, uint256 amount, bool toUnderlying) external returns (uint256, uint256);
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
    external;
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
) external returns (uint256);
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
) external returns (uint256, uint256);
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
function dynamicBalanceOf(address account) external view returns (uint256);
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
function staticToDynamicAmount(uint256 amount) external view returns (uint256);
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
function dynamicToStaticAmount(uint256 amount) external view returns (uint256);
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
function rate() external view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The liquidity index|


### getDomainSeparator

Function to return a dynamic domain separator, in order to be compatible with forks changing chainId


```solidity
function getDomainSeparator() external view returns (bytes32);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bytes32`|bytes32 The domain separator|


### collectAndUpdateRewards

Claims rewards from `INCENTIVES_CONTROLLER` and updates internal accounting of rewards.


```solidity
function collectAndUpdateRewards() external;
```

### claimRewardsOnBehalf

Claim rewards on behalf of a user and send them to a receiver

*Only callable by if sender is onBehalfOf or sender is approved claimer*


```solidity
function claimRewardsOnBehalf(address onBehalfOf, address receiver, bool forceUpdate) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`onBehalfOf`|`address`|The address to claim on behalf of|
|`receiver`|`address`|The address to receive the rewards|
|`forceUpdate`|`bool`|Flag to retrieve latest rewards from `INCENTIVES_CONTROLLER`|


### claimRewards

Claim rewards and send them to a receiver


```solidity
function claimRewards(address receiver, bool forceUpdate) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`receiver`|`address`|The address to receive the rewards|
|`forceUpdate`|`bool`|Flag to retrieve latest rewards from `INCENTIVES_CONTROLLER`|


### claimRewardsToSelf

Claim rewards


```solidity
function claimRewardsToSelf(bool forceUpdate) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`forceUpdate`|`bool`|Flag to retrieve latest rewards from `INCENTIVES_CONTROLLER`|


### getTotalClaimableRewards

Get the total claimable rewards of the contract.


```solidity
function getTotalClaimableRewards() external view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The current balance + pending rewards from the `_incentivesController`|


### getClaimableRewards

Get the total claimable rewards for a user in WAD


```solidity
function getClaimableRewards(address user) external view returns (uint256);
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
function getUnclaimedRewards(address user) external view returns (uint256);
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
function getAccRewardsPerToken() external view returns (uint256);
```

### getLifetimeRewardsClaimed


```solidity
function getLifetimeRewardsClaimed() external view returns (uint256);
```

### getLifetimeRewards


```solidity
function getLifetimeRewards() external view returns (uint256);
```

### getLastRewardBlock


```solidity
function getLastRewardBlock() external view returns (uint256);
```

### LENDING_POOL


```solidity
function LENDING_POOL() external view returns (ILendingPool);
```

### INCENTIVES_CONTROLLER


```solidity
function INCENTIVES_CONTROLLER() external view returns (IAaveIncentivesController);
```

### ATOKEN


```solidity
function ATOKEN() external view returns (IERC20);
```

### ASSET


```solidity
function ASSET() external view returns (IERC20);
```

### REWARD_TOKEN


```solidity
function REWARD_TOKEN() external view returns (IERC20);
```

### UNDERLYING_ASSET_ADDRESS


```solidity
function UNDERLYING_ASSET_ADDRESS() external view returns (address);
```

### getIncentivesController


```solidity
function getIncentivesController() external view returns (IAaveIncentivesController);
```

## Structs
### SignatureParams

```solidity
struct SignatureParams {
    uint8 v;
    bytes32 r;
    bytes32 s;
}
```

