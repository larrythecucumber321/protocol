# IAToken
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/assets/aave/IAToken.sol)

**Inherits:**
[IERC20](/src/contracts/plugins/mocks/vendor/EasyAuction.sol/interface.IERC20.md), IScaledBalanceToken


## Functions
### mint

*Mints `amount` aTokens to `user`*


```solidity
function mint(address user, uint256 amount, uint256 index) external returns (bool);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`user`|`address`|The address receiving the minted tokens|
|`amount`|`uint256`|The amount of tokens getting minted|
|`index`|`uint256`|The new liquidity index of the reserve|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|`true` if the the previous balance of the user was 0|


### burn

*Burns aTokens from `user` and sends the equivalent amount of underlying to `receiverOfUnderlying`*


```solidity
function burn(address user, address receiverOfUnderlying, uint256 amount, uint256 index) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`user`|`address`|The owner of the aTokens, getting them burned|
|`receiverOfUnderlying`|`address`|The address that will receive the underlying|
|`amount`|`uint256`|The amount being burned|
|`index`|`uint256`|The new liquidity index of the reserve|


### mintToTreasury

*Mints aTokens to the reserve treasury*


```solidity
function mintToTreasury(uint256 amount, uint256 index) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`amount`|`uint256`|The amount of tokens getting minted|
|`index`|`uint256`|The new liquidity index of the reserve|


### transferOnLiquidation

*Transfers aTokens in the event of a borrow being liquidated, in case the liquidators reclaims the aToken*


```solidity
function transferOnLiquidation(address from, address to, uint256 value) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`from`|`address`|The address getting liquidated, current owner of the aTokens|
|`to`|`address`|The recipient|
|`value`|`uint256`|The amount of tokens getting transferred|


### transferUnderlyingTo

*Transfers the underlying asset to `target`. Used by the LendingPool to transfer
assets in borrow(), withdraw() and flashLoan()*


```solidity
function transferUnderlyingTo(address user, uint256 amount) external returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`user`|`address`|The recipient of the underlying|
|`amount`|`uint256`|The amount getting transferred|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The amount transferred|


### handleRepayment

*Invoked to execute actions on the aToken side after a repayment.*


```solidity
function handleRepayment(address user, uint256 amount) external;
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`user`|`address`|The user executing the repayment|
|`amount`|`uint256`|The amount getting repaid|


### getIncentivesController

*Returns the address of the incentives controller contract*


```solidity
function getIncentivesController() external view returns (IAaveIncentivesController);
```

### UNDERLYING_ASSET_ADDRESS

*Returns the address of the underlying asset of this aToken (E.g. WETH for aWETH)*


```solidity
function UNDERLYING_ASSET_ADDRESS() external view returns (address);
```

## Events
### Mint
*Emitted after the mint action*


```solidity
event Mint(address indexed from, uint256 value, uint256 index);
```

### Burn
*Emitted after aTokens are burned*


```solidity
event Burn(address indexed from, address indexed target, uint256 value, uint256 index);
```

### BalanceTransfer
*Emitted during the transfer action*


```solidity
event BalanceTransfer(address indexed from, address indexed to, uint256 value, uint256 index);
```

