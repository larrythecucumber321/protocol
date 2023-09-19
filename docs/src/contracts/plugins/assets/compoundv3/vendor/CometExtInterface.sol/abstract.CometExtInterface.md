# CometExtInterface
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/compoundv3/vendor/CometExtInterface.sol)

**Author:**
Compound

An efficient monolithic money market protocol


## Functions
### allow


```solidity
function allow(address manager, bool isAllowed) external virtual;
```

### allowBySig


```solidity
function allowBySig(
    address owner,
    address manager,
    bool isAllowed,
    uint256 nonce,
    uint256 expiry,
    uint8 v,
    bytes32 r,
    bytes32 s
) external virtual;
```

### collateralBalanceOf


```solidity
function collateralBalanceOf(address account, address asset) external view virtual returns (uint128);
```

### baseTrackingAccrued


```solidity
function baseTrackingAccrued(address account) external view virtual returns (uint64);
```

### baseAccrualScale


```solidity
function baseAccrualScale() external view virtual returns (uint64);
```

### baseIndexScale


```solidity
function baseIndexScale() external view virtual returns (uint64);
```

### factorScale


```solidity
function factorScale() external view virtual returns (uint64);
```

### priceScale


```solidity
function priceScale() external view virtual returns (uint64);
```

### maxAssets


```solidity
function maxAssets() external view virtual returns (uint8);
```

### totalsBasic


```solidity
function totalsBasic() external view virtual returns (TotalsBasic memory);
```

### version


```solidity
function version() external view virtual returns (string memory);
```

### name

===== ERC20 interfaces =====
Does not include the following functions/events, which are defined in `CometMainInterface`
instead:
- function decimals() virtual external view returns (uint8)
- function totalSupply() virtual external view returns (uint256)
- function transfer(address dst, uint amount) virtual external returns (bool)
- function transferFrom(address src, address dst, uint amount) virtual external returns
(bool)
- function balanceOf(address owner) virtual external view returns (uint256)
- event Transfer(address indexed from, address indexed to, uint256 amount)


```solidity
function name() external view virtual returns (string memory);
```

### symbol


```solidity
function symbol() external view virtual returns (string memory);
```

### approve

Approve `spender` to transfer up to `amount` from `src`

*This will overwrite the approval amount for `spender`
and is subject to issues noted [here](https://eips.ethereum.org/EIPS/eip-20#approve)*


```solidity
function approve(address spender, uint256 amount) external virtual returns (bool);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`spender`|`address`|The address of the account which may transfer tokens|
|`amount`|`uint256`|The number of tokens that are approved (-1 means infinite)|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bool`|Whether or not the approval succeeded|


### allowance

Get the current allowance from `owner` for `spender`


```solidity
function allowance(address owner, address spender) external view virtual returns (uint256);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`owner`|`address`|The address of the account which owns the tokens to be spent|
|`spender`|`address`|The address of the account which may transfer tokens|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|The number of tokens allowed to be spent (-1 means infinite)|


## Events
### Approval

```solidity
event Approval(address indexed owner, address indexed spender, uint256 amount);
```

## Errors
### BadAmount

```solidity
error BadAmount();
```

### BadNonce

```solidity
error BadNonce();
```

### BadSignatory

```solidity
error BadSignatory();
```

### InvalidValueS

```solidity
error InvalidValueS();
```

### InvalidValueV

```solidity
error InvalidValueV();
```

### SignatureExpired

```solidity
error SignatureExpired();
```

