# BasketHandlerP1
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/p1/BasketHandler.sol)

**Inherits:**
[ComponentP1](/tools/docgen/src/contracts/p1/mixins/Component.sol/abstract.ComponentP1.md), [IBasketHandler](/tools/docgen/src/contracts/interfaces/IBasketHandler.sol/interface.IBasketHandler.md)

Handles the basket configuration, definition, and evolution over time.


## State Variables
### MAX_TARGET_AMT

```solidity
uint192 public constant MAX_TARGET_AMT = 1e3 * FIX_ONE;
```


### assetRegistry

```solidity
IAssetRegistry private assetRegistry;
```


### backingManager

```solidity
IBackingManager private backingManager;
```


### rsr

```solidity
IERC20 private rsr;
```


### rToken

```solidity
IRToken private rToken;
```


### stRSR

```solidity
IStRSR private stRSR;
```


### config

```solidity
BasketConfig private config;
```


### basket

```solidity
Basket private basket;
```


### nonce

```solidity
uint48 public override nonce;
```


### timestamp

```solidity
uint48 public override timestamp;
```


### disabled

```solidity
bool private disabled;
```


### _targetNames

```solidity
EnumerableSet.Bytes32Set private _targetNames;
```


### _newBasket

```solidity
Basket private _newBasket;
```


### __gap
*This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps*


```solidity
uint256[42] private __gap;
```


## Functions
### init


```solidity
function init(IMain main_) external initializer;
```

### disableBasket

Disable the basket in order to schedule a basket refresh


```solidity
function disableBasket() external;
```

### refreshBasket

Switch the basket, only callable directly by governance or after a default


```solidity
function refreshBasket() external;
```

### setPrimeBasket

Set the prime basket in the basket configuration, in terms of erc20s and target amounts


```solidity
function setPrimeBasket(IERC20[] calldata erc20s, uint192[] calldata targetAmts) external governance;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`erc20s`|`IERC20[]`|The collateral for the new prime basket|
|`targetAmts`|`uint192[]`|The target amounts (in) {target/BU} for the new prime basket|


### setBackupConfig

Set the backup configuration for some target name


```solidity
function setBackupConfig(bytes32 targetName, uint256 max, IERC20[] calldata erc20s) external governance;
```

### fullyCollateralized


```solidity
function fullyCollateralized() external view returns (bool);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|Whether this contract owns enough collateral to cover rToken.basketsNeeded() BUs ie, whether the protocol is currently fully collateralized|


### status


```solidity
function status() public view returns (CollateralStatus status_);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`status_`|`CollateralStatus`|The status of the basket|


### quantity


```solidity
function quantity(IERC20 erc20) public view returns (uint192);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`erc20`|`IERC20`|The token contract to check for quantity for|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{tok/BU} The token-quantity of an ERC20 token in the basket.|


### quantityUnsafe

Like quantity(), but unsafe because it DOES NOT CONFIRM THAT THE ASSET IS CORRECT


```solidity
function quantityUnsafe(IERC20 erc20, IAsset asset) public view returns (uint192);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`erc20`|`IERC20`|The ERC20 token contract for the asset|
|`asset`|`IAsset`|The registered asset plugin contract for the erc20|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{tok/BU} The token-quantity of an ERC20 token in the basket.|


### _quantity


```solidity
function _quantity(IERC20 erc20, ICollateral coll) internal view returns (uint192);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`erc20`|`IERC20`|The token contract|
|`coll`|`ICollateral`|The registered collateral plugin contract|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192`|{tok/BU} The token-quantity of an ERC20 token in the basket.|


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
lowLow should be nonzero when the asset might be worth selling


```solidity
function lotPrice() external view returns (uint192 lotLow, uint192 lotHigh);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`lotLow`|`uint192`|{UoA/BU} The lower end of the lot price estimate|
|`lotHigh`|`uint192`|{UoA/BU} The upper end of the lot price estimate|


### _price

Returns the price of a BU, using the lot prices if `useLotPrice` is true


```solidity
function _price(bool useLotPrice) internal view returns (uint192 low, uint192 high);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`low`|`uint192`|{UoA/BU} The lower end of the price estimate|
|`high`|`uint192`|{UoA/BU} The upper end of the price estimate|


### quote

Return the current issuance/redemption value of `amount` BUs


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
|`erc20s`|`address[]`|The backing collateral erc20s|
|`quantities`|`uint256[]`|{qTok} ERC20 token quantities equal to `amount` BUs|


### basketsHeldBy

*Returns (FIX_ZERO, FIX_MAX) for an empty or DISABLED basket*


```solidity
function basketsHeldBy(address account) public view returns (BasketRange memory baskets);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`baskets`|`BasketRange`|{BU} .top The number of partial basket units: e.g max(coll.map((c) => c.balAsBUs()) .bottom The number of whole basket units held by the account|


### _switchBasket

Select and save the next basket, based on the BasketConfig and Collateral statuses
(The mutator that actually does all the work in this contract.)


```solidity
function _switchBasket() private;
```

### requireValidCollArray

Require that erc20s is a valid collateral array


```solidity
function requireValidCollArray(IERC20[] calldata erc20s) internal view;
```

### goodCollateral

Good collateral is registered, collateral, SOUND, has the expected targetName,
has nonzero targetPerRef() and refPerTok(), and is not a system token or 0 addr


```solidity
function goodCollateral(bytes32 targetName, IERC20 erc20) private view returns (bool);
```

### getPrimeBasket

Getter pt1 for `config` struct variable

*Indices are shared across return values*


```solidity
function getPrimeBasket()
    external
    view
    returns (IERC20[] memory erc20s, bytes32[] memory targetNames, uint192[] memory targetAmts);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`erc20s`|`IERC20[]`|The erc20s in the prime basket|
|`targetNames`|`bytes32[]`|The bytes32 name identifier of the target unit, per ERC20|
|`targetAmts`|`uint192[]`|{target/BU} The amount of the target unit in the basket, per ERC20|


### getBackupConfig

Getter pt2 for `config` struct variable


```solidity
function getBackupConfig(bytes32 targetName) external view returns (IERC20[] memory erc20s, uint256 max);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`targetName`|`bytes32`|The name of the target unit to lookup the backup for|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`erc20s`|`IERC20[]`|The backup erc20s for the target unit, in order of most to least desirable|
|`max`|`uint256`|The maximum number of tokens from the array to use at a single time|


