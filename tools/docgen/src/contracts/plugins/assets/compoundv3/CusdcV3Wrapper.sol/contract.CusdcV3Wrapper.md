# CusdcV3Wrapper
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/compoundv3/CusdcV3Wrapper.sol)

**Inherits:**
[ICusdcV3Wrapper](/tools/docgen/src/contracts/plugins/assets/compoundv3/ICusdcV3Wrapper.sol/interface.ICusdcV3Wrapper.md), [WrappedERC20](/tools/docgen/src/contracts/plugins/assets/compoundv3/WrappedERC20.sol/abstract.WrappedERC20.md), [CometHelpers](/tools/docgen/src/contracts/plugins/assets/compoundv3/CometHelpers.sol/contract.CometHelpers.md)

Wrapper for cUSDCV3 / COMET that acts as a stable-balance ERC20, instead of rebasing
token. {comet} will be used as the unit for the underlying token, and {wComet} will be used
as the unit for wrapped tokens.


## State Variables
### TRACKING_INDEX_SCALE
From cUSDCv3, used in principal <> present calculations


```solidity
uint256 public constant TRACKING_INDEX_SCALE = 1e15;
```


### RESCALE_FACTOR
From cUSDCv3, scaling factor for USDC rewards


```solidity
uint64 public constant RESCALE_FACTOR = 1e12;
```


### underlyingComet

```solidity
CometInterface public immutable underlyingComet;
```


### rewardsAddr

```solidity
ICometRewards public immutable rewardsAddr;
```


### rewardERC20

```solidity
IERC20 public immutable rewardERC20;
```


### baseTrackingIndex

```solidity
mapping(address => uint64) public baseTrackingIndex;
```


### baseTrackingAccrued

```solidity
mapping(address => uint64) public baseTrackingAccrued;
```


### rewardsClaimed

```solidity
mapping(address => uint256) public rewardsClaimed;
```


## Functions
### constructor


```solidity
constructor(address cusdcv3, address rewardsAddr_, address rewardERC20_) WrappedERC20("Wrapped cUSDCv3", "wcUSDCv3");
```

### decimals


```solidity
function decimals() public pure override returns (uint8);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint8`|number of decimals|


### deposit


```solidity
function deposit(uint256 amount) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint256`|{Comet} The amount of cUSDCv3 to deposit|


### depositTo


```solidity
function depositTo(address dst, uint256 amount) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`dst`|`address`|The dst to deposit into|
|`amount`|`uint256`|{Comet} The amount of cUSDCv3 to deposit|


### depositFrom


```solidity
function depositFrom(address src, address dst, uint256 amount) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`src`|`address`|The address to deposit from|
|`dst`|`address`|The address to deposit to|
|`amount`|`uint256`|{Comet} The amount of cUSDCv3 to deposit|


### _deposit

Only called internally to run the deposit logic
Takes `amount` fo cUSDCv3 from `src` and deposits to `dst` account in the wrapper.


```solidity
function _deposit(address operator, address src, address dst, uint256 amount) internal;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`operator`|`address`|The address calling the contract (msg.sender)|
|`src`|`address`|The address to deposit from|
|`dst`|`address`|The address to deposit to|
|`amount`|`uint256`|{Comet} The amount of cUSDCv3 to deposit|


### withdraw


```solidity
function withdraw(uint256 amount) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint256`|{Comet} The amount of cUSDCv3 to withdraw|


### withdrawTo


```solidity
function withdrawTo(address dst, uint256 amount) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`dst`|`address`|The address to withdraw cUSDCv3 to|
|`amount`|`uint256`|{Comet} The amount of cUSDCv3 to withdraw|


### withdrawFrom


```solidity
function withdrawFrom(address src, address dst, uint256 amount) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`src`|`address`|The address to withdraw from|
|`dst`|`address`|The address to withdraw cUSDCv3 to|
|`amount`|`uint256`|{Comet} The amount of cUSDCv3 to withdraw|


### _withdraw

Internally called to run the withdraw logic
Withdraws `amount` cUSDCv3 from `src` account in the wrapper and sends to `dst`

*Rounds conservatively so as not to over-withdraw from the wrapper*


```solidity
function _withdraw(address operator, address src, address dst, uint256 amount) internal;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`operator`|`address`|The address calling the contract (msg.sender)|
|`src`|`address`|The address to withdraw from|
|`dst`|`address`|The address to withdraw cUSDCv3 to|
|`amount`|`uint256`|{Comet} The amount of cUSDCv3 to withdraw|


### _beforeTokenTransfer

Internally called to run transfer logic.
Accrues rewards for `src` and `dst` before transferring value.


```solidity
function _beforeTokenTransfer(address src, address dst, uint256 amount) internal virtual override;
```

### claimTo


```solidity
function claimTo(address src, address dst) public;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`src`|`address`|The account to claim from|
|`dst`|`address`|The address to send claimed rewards to|


### accrue

Accure the cUSDCv3 account of the wrapper


```solidity
function accrue() public;
```

### accrueAccount


```solidity
function accrueAccount(address account) public;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`account`|`address`|The address to accrue, first in cUSDCv3, then locally|


### underlyingBalanceOf

Get the balance of cUSDCv3 that is represented by the `accounts` wrapper value.


```solidity
function underlyingBalanceOf(address account) public view returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`account`|`address`|The address to calculate the cUSDCv3 balance of|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|{Comet} The cUSDCv3 balance that `account` holds in the wrapper|


### exchangeRate


```solidity
function exchangeRate() public view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The exchange rate {comet/wComet}|


### convertStaticToDynamic


```solidity
function convertStaticToDynamic(uint104 amount) public view returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint104`|The value of {wComet} to convert to {Comet}|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|{Comet} The amount of cUSDCv3 represented by `amount of {wComet}|


### convertDynamicToStatic


```solidity
function convertDynamicToStatic(uint256 amount) public view returns (uint104);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint256`|The value of {Comet} to convert to {wComet}|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint104`|{wComet} The amount of wrapped token represented by `amount` of {Comet}|


### getRewardOwed


```solidity
function getRewardOwed(address account) external view returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`account`|`address`|The address to view the owed rewards of|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|{reward} The amount of reward tokens owed to `account`|


### getSupplyIndices

Internally called to get saved indicies


```solidity
function getSupplyIndices() internal view returns (uint64 baseSupplyIndex_, uint64 trackingSupplyIndex_);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`baseSupplyIndex_`|`uint64`|{1} The saved baseSupplyIndex|
|`trackingSupplyIndex_`|`uint64`|{1} The saved trackingSupplyIndex|


### accrueAccountRewards

Internally called to update the account indicies and accrued rewards for a given address


```solidity
function accrueAccountRewards(address account) internal;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`account`|`address`|The UserBasic struct for a target address|


### getUpdatedSupplyIndicies

Internally called to get the updated supply indicies


```solidity
function getUpdatedSupplyIndicies() internal view returns (uint64, uint64);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint64`|{1} The current baseSupplyIndex|
|`<none>`|`uint64`|{1} The current trackingSupplyIndex|


