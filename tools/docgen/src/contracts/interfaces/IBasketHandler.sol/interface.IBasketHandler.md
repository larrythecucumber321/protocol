# IBasketHandler
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IBasketHandler.sol)

**Inherits:**
[IComponent](/tools/docgen/src/contracts/interfaces/IComponent.sol/interface.IComponent.md)

The BasketHandler aims to maintain a reference basket of constant target unit amounts.
When a collateral token defaults, a new reference basket of equal target units is set.
When _all_ collateral tokens default for a target unit, only then is the basket allowed to fall
in terms of target unit amounts. The basket is considered defaulted in this case.


## Functions
### init


```solidity
function init(IMain main_) external;
```

### setPrimeBasket

Set the prime basket


```solidity
function setPrimeBasket(IERC20[] memory erc20s, uint192[] memory targetAmts) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`erc20s`|`IERC20[]`|The collateral tokens for the new prime basket|
|`targetAmts`|`uint192[]`|The target amounts (in) {target/BU} for the new prime basket required range: 1e9 values; absolute range irrelevant.|


### setBackupConfig

Set the backup configuration for a given target


```solidity
function setBackupConfig(bytes32 targetName, uint256 max, IERC20[] calldata erc20s) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`targetName`|`bytes32`|The name of the target as a bytes32|
|`max`|`uint256`|The maximum number of collateral tokens to use from this target Required range: 1-255|
|`erc20s`|`IERC20[]`|A list of ordered backup collateral tokens|


### disableBasket

Default the basket in order to schedule a basket refresh


```solidity
function disableBasket() external;
```

### refreshBasket

Governance-controlled setter to cause a basket switch explicitly


```solidity
function refreshBasket() external;
```

### fullyCollateralized


```solidity
function fullyCollateralized() external view returns (bool);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|If the BackingManager has sufficient collateral to redeem the entire RToken supply|


### status


```solidity
function status() external view returns (CollateralStatus status);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`status`|`CollateralStatus`|The worst CollateralStatus of all collateral in the basket|


### quantity


```solidity
function quantity(IERC20 erc20) external view returns (uint192);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`erc20`|`IERC20`|The ERC20 token contract for the asset|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{tok/BU} The whole token quantity of token in the reference basket Returns 0 if erc20 is not registered or not in the basket Returns FIX_MAX (in lieu of +infinity) if Collateral.refPerTok() is 0. Otherwise, returns (token's basket.refAmts / token's Collateral.refPerTok())|


### quantityUnsafe

Like quantity(), but unsafe because it DOES NOT CONFIRM THAT THE ASSET IS CORRECT


```solidity
function quantityUnsafe(IERC20 erc20, IAsset asset) external view returns (uint192);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`erc20`|`IERC20`|The ERC20 token contract for the asset|
|`asset`|`IAsset`|The registered asset plugin contract for the erc20|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{tok/BU} The whole token quantity of token in the reference basket Returns 0 if erc20 is not registered or not in the basket Returns FIX_MAX (in lieu of +infinity) if Collateral.refPerTok() is 0. Otherwise, returns (token's basket.refAmts / token's Collateral.refPerTok())|


### quote


```solidity
function quote(uint192 amount, RoundingMode rounding)
    external
    view
    returns (address[] memory erc20s, uint256[] memory quantities);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint192`|{BU}|
|`rounding`|`RoundingMode`||

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`erc20s`|`address[]`|The addresses of the ERC20 tokens in the reference basket|
|`quantities`|`uint256[]`|{qTok} The quantity of each ERC20 token to issue `amount` baskets|


### basketsHeldBy


```solidity
function basketsHeldBy(address account) external view returns (BasketRange memory);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`BasketRange`|top {BU} The number of partial basket units: e.g max(coll.map((c) => c.balAsBUs()) bottom {BU} The number of whole basket units held by the account|


### price

Should not revert


```solidity
function price() external view returns (uint192 low, uint192 high);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`low`|`uint192`|{UoA/BU} The lower end of the price estimate|
|`high`|`uint192`|{UoA/BU} The upper end of the price estimate|


### lotPrice

Should not revert
lotLow should be nonzero if a BU could be worth selling


```solidity
function lotPrice() external view returns (uint192 lotLow, uint192 lotHigh);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`lotLow`|`uint192`|{UoA/tok} The lower end of the lot price estimate|
|`lotHigh`|`uint192`|{UoA/tok} The upper end of the lot price estimate|


### timestamp


```solidity
function timestamp() external view returns (uint48);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint48`|timestamp The timestamp at which the basket was last set|


### nonce


```solidity
function nonce() external view returns (uint48);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint48`|The current basket nonce, regardless of status|


## Events
### PrimeBasketSet
Emitted when the prime basket is set


```solidity
event PrimeBasketSet(IERC20[] erc20s, uint192[] targetAmts, bytes32[] targetNames);
```

### BasketSet
Emitted when the reference basket is set


```solidity
event BasketSet(uint256 indexed nonce, IERC20[] erc20s, uint192[] refAmts, bool disabled);
```

### BackupConfigSet
Emitted when a backup config is set for a target unit


```solidity
event BackupConfigSet(bytes32 indexed targetName, uint256 indexed max, IERC20[] erc20s);
```

