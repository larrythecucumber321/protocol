# IRToken
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IRToken.sol)

**Inherits:**
[IComponent](/tools/docgen/src/contracts/interfaces/IComponent.sol/interface.IComponent.md), IERC20MetadataUpgradeable, IERC20PermitUpgradeable

An RToken is an ERC20 that is permissionlessly issuable/redeemable and tracks an
exchange rate against a single unit: baskets, or {BU} in our type notation.


## Functions
### init


```solidity
function init(
    IMain main_,
    string memory name_,
    string memory symbol_,
    string memory mandate_,
    ThrottleLib.Params calldata issuanceThrottleParams,
    ThrottleLib.Params calldata redemptionThrottleParams
) external;
```

### issue

Issue an RToken with basket collateral


```solidity
function issue(uint256 amount) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint256`|{qRTok} The quantity of RToken to issue|


### issueTo

Issue an RToken with basket collateral, to a particular recipient


```solidity
function issueTo(address recipient, uint256 amount) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`recipient`|`address`|The address to receive the issued RTokens|
|`amount`|`uint256`|{qRTok} The quantity of RToken to issue|


### redeem

Redeem RToken for basket collateral


```solidity
function redeem(uint256 amount, uint48 basketNonce) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint256`|{qRTok} The quantity {qRToken} of RToken to redeem|
|`basketNonce`|`uint48`|The nonce of the basket the redemption should be from; else reverts|


### redeemTo

Redeem RToken for basket collateral to a particular recipient


```solidity
function redeemTo(address recipient, uint256 amount, uint48 basketNonce) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`recipient`|`address`|The address to receive the backing collateral tokens|
|`amount`|`uint256`|{qRTok} The quantity {qRToken} of RToken to redeem|
|`basketNonce`|`uint48`|The nonce of the basket the redemption should be from; else reverts|


### mint

Mints a quantity of RToken to the `recipient`, callable only by the BackingManager


```solidity
function mint(address recipient, uint256 amount) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`recipient`|`address`|The recipient of the newly minted RToken|
|`amount`|`uint256`|{qRTok} The amount to be minted|


### melt

Melt a quantity of RToken from the caller's account


```solidity
function melt(uint256 amount) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint256`|{qRTok} The amount to be melted|


### setBasketsNeeded

Set the number of baskets needed directly, callable only by the BackingManager


```solidity
function setBasketsNeeded(uint192 basketsNeeded) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`basketsNeeded`|`uint192`|{BU} The number of baskets to target needed range: pretty interesting|


### basketsNeeded


```solidity
function basketsNeeded() external view returns (uint192);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{BU} How many baskets are being targeted|


### issuanceAvailable


```solidity
function issuanceAvailable() external view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|{qRTok} The maximum issuance that can be performed in the current block|


### redemptionAvailable


```solidity
function redemptionAvailable() external view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|{qRTok} The maximum redemption that can be performed in the current block|


## Events
### Issuance
Emitted when an issuance of RToken occurs, whether it occurs via slow minting or not


```solidity
event Issuance(address indexed issuer, address indexed recipient, uint256 indexed amount, uint192 baskets);
```

### Redemption
Emitted when a redemption of RToken occurs


```solidity
event Redemption(address indexed redeemer, address indexed recipient, uint256 indexed amount, uint192 baskets);
```

### BasketsNeededChanged
Emitted when the number of baskets needed changes


```solidity
event BasketsNeededChanged(uint192 oldBasketsNeeded, uint192 newBasketsNeeded);
```

### Melted
Emitted when RToken is melted, i.e the RToken supply is decreased but basketsNeeded is not


```solidity
event Melted(uint256 amount);
```

### IssuanceThrottleSet
Emitted when issuance SupplyThrottle params are set


```solidity
event IssuanceThrottleSet(ThrottleLib.Params oldVal, ThrottleLib.Params newVal);
```

### RedemptionThrottleSet
Emitted when redemption SupplyThrottle params are set


```solidity
event RedemptionThrottleSet(ThrottleLib.Params oldVal, ThrottleLib.Params newVal);
```

