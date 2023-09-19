# FacadeRead
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/facade/FacadeRead.sol)

**Inherits:**
[IFacadeRead](/tools/docgen/src/contracts/interfaces/IFacadeRead.sol/interface.IFacadeRead.md)

A UX-friendly layer for reading out the state of an RToken in summary views.


## Functions
### maxIssuable


```solidity
function maxIssuable(IRToken rToken, address account) external returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|{qRTok} How many RToken `account` can issue given current holdings|


### issue


```solidity
function issue(IRToken rToken, uint256 amount)
    external
    returns (address[] memory tokens, uint256[] memory deposits, uint192[] memory depositsUoA);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`tokens`|`address[]`|The erc20 needed for the issuance|
|`deposits`|`uint256[]`|{qTok} The deposits necessary to issue `amount` RToken|
|`depositsUoA`|`uint192[]`|{UoA} The UoA value of the deposits necessary to issue `amount` RToken|


### redeem


```solidity
function redeem(IRToken rToken, uint256 amount, uint48 basketNonce)
    external
    returns (address[] memory tokens, uint256[] memory withdrawals, bool isProrata);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`tokens`|`address[]`|The erc20s returned for the redemption|
|`withdrawals`|`uint256[]`|The balances necessary to issue `amount` RToken|
|`isProrata`|`bool`|True if the redemption is prorata and not full|


### basketBreakdown


```solidity
function basketBreakdown(RTokenP1 rToken)
    external
    returns (address[] memory erc20s, uint192[] memory uoaShares, bytes32[] memory targets);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`erc20s`|`address[]`|The ERC20 addresses in the current basket|
|`uoaShares`|`uint192[]`|{1} The proportion of the basket associated with each ERC20|
|`targets`|`bytes32[]`|The bytes32 representations of the target unit associated with each ERC20|


### pendingUnstakings


```solidity
function pendingUnstakings(RTokenP1 rToken, address account) external view returns (Pending[] memory unstakings);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`rToken`|`RTokenP1`||
|`account`|`address`|The account for the query|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`unstakings`|`Pending[]`|All the pending StRSR unstakings for an account|


### primeBasket

Returns the prime basket

*Indices are shared aross return values*


```solidity
function primeBasket(RTokenP1 rToken)
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


### basketTokens


```solidity
function basketTokens(IRToken rToken) external view returns (address[] memory tokens);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`tokens`|`address[]`|The ERC20s backing the RToken|


### backupConfig

Returns the backup configuration for a given targetName


```solidity
function backupConfig(RTokenP1 rToken, bytes32 targetName)
    external
    view
    returns (IERC20[] memory erc20s, uint256 max);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`rToken`|`RTokenP1`||
|`targetName`|`bytes32`|The name of the target unit to lookup the backup for|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`erc20s`|`IERC20[]`|The backup erc20s for the target unit, in order of most to least desirable|
|`max`|`uint256`|The maximum number of tokens from the array to use at a single time|


### stToken


```solidity
function stToken(IRToken rToken) external view returns (IStRSR stTokenAddress);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`stTokenAddress`|`IStRSR`|The address of the corresponding stToken for the rToken|


### backingOverview


```solidity
function backingOverview(IRToken rToken) external view returns (uint192 backing, uint192 overCollateralization);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`backing`|`uint192`|{1} The worstcase collateralization % the protocol will have after trading|
|`overCollateralization`|`uint192`|{1} The over-collateralization value relative to the fully-backed value as a %|


### traderBalances


```solidity
function traderBalances(IRToken rToken, ITrading trader)
    external
    view
    returns (IERC20[] memory erc20s, uint256[] memory balances, uint256[] memory balancesNeeded);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`erc20s`|`IERC20[]`|The registered ERC20s|
|`balances`|`uint256[]`|{qTok} The held balances of each ERC20 at the trader|
|`balancesNeeded`|`uint256[]`|{qTok} The needed balance of each ERC20 at the trader|


### price


```solidity
function price(IRToken rToken) external view returns (uint192 low, uint192 high);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`low`|`uint192`|{UoA/tok} The low price of the RToken as given by the relevant RTokenAsset|
|`high`|`uint192`|{UoA/tok} The high price of the RToken as given by the relevant RTokenAsset|


### auctionsSettleable


```solidity
function auctionsSettleable(ITrading trader) external view returns (IERC20[] memory erc20s);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`erc20s`|`IERC20[]`|The list of ERC20s that have auctions that can be settled, for given trader|


### basketRange


```solidity
function basketRange(IRToken rToken, uint192 basketsNeeded) private view returns (BasketRange memory range);
```

