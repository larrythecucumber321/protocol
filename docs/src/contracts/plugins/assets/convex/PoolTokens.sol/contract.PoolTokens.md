# PoolTokens
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/convex/PoolTokens.sol)

Supports CvxCurve non-meta pools for up to 4 tokens


## State Variables
### curvePool

```solidity
ICurvePool public immutable curvePool;
```


### lpToken

```solidity
IERC20Metadata public immutable lpToken;
```


### nTokens

```solidity
uint8 internal immutable nTokens;
```


### token0

```solidity
IERC20Metadata internal immutable token0;
```


### token1

```solidity
IERC20Metadata internal immutable token1;
```


### token2

```solidity
IERC20Metadata internal immutable token2;
```


### token3

```solidity
IERC20Metadata internal immutable token3;
```


### _t0feed0

```solidity
AggregatorV3Interface internal immutable _t0feed0;
```


### _t0feed1

```solidity
AggregatorV3Interface internal immutable _t0feed1;
```


### _t0timeout0

```solidity
uint48 internal immutable _t0timeout0;
```


### _t0timeout1

```solidity
uint48 internal immutable _t0timeout1;
```


### _t0error0

```solidity
uint192 internal immutable _t0error0;
```


### _t0error1

```solidity
uint192 internal immutable _t0error1;
```


### _t1feed0

```solidity
AggregatorV3Interface internal immutable _t1feed0;
```


### _t1feed1

```solidity
AggregatorV3Interface internal immutable _t1feed1;
```


### _t1timeout0

```solidity
uint48 internal immutable _t1timeout0;
```


### _t1timeout1

```solidity
uint48 internal immutable _t1timeout1;
```


### _t1error0

```solidity
uint192 internal immutable _t1error0;
```


### _t1error1

```solidity
uint192 internal immutable _t1error1;
```


### _t2feed0

```solidity
AggregatorV3Interface internal immutable _t2feed0;
```


### _t2feed1

```solidity
AggregatorV3Interface internal immutable _t2feed1;
```


### _t2timeout0

```solidity
uint48 internal immutable _t2timeout0;
```


### _t2timeout1

```solidity
uint48 internal immutable _t2timeout1;
```


### _t2error0

```solidity
uint192 internal immutable _t2error0;
```


### _t2error1

```solidity
uint192 internal immutable _t2error1;
```


### _t3feed0

```solidity
AggregatorV3Interface internal immutable _t3feed0;
```


### _t3feed1

```solidity
AggregatorV3Interface internal immutable _t3feed1;
```


### _t3timeout0

```solidity
uint48 internal immutable _t3timeout0;
```


### _t3timeout1

```solidity
uint48 internal immutable _t3timeout1;
```


### _t3error0

```solidity
uint192 internal immutable _t3error0;
```


### _t3error1

```solidity
uint192 internal immutable _t3error1;
```


## Functions
### constructor


```solidity
constructor(PTConfiguration memory config);
```

### tokenPrice


```solidity
function tokenPrice(uint8 index) public view returns (uint192 low, uint192 high);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`index`|`uint8`|The index of the token: 0, 1, 2, or 3|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`low`|`uint192`|{UoA/ref_index}|
|`high`|`uint192`|{UoA/ref_index}|


### totalBalancesValue


```solidity
function totalBalancesValue() internal view returns (uint192 low, uint192 high);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`low`|`uint192`|{UoA}|
|`high`|`uint192`|{UoA}|


### getBalances


```solidity
function getBalances() internal view virtual returns (uint192[] memory);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint192[]`|[{tok}]|


### getToken


```solidity
function getToken(uint8 index) private view returns (IERC20Metadata);
```

### minFeedsLength


```solidity
function minFeedsLength(AggregatorV3Interface[][] memory feeds) private pure returns (uint8);
```

### maxFeedsLength


```solidity
function maxFeedsLength(AggregatorV3Interface[][] memory feeds) private pure returns (uint8);
```

### toRange

x and y can be any two fixes that can be multiplied


```solidity
function toRange(uint192 x, uint192 y, uint192 xErr, uint192 yErr) private pure returns (uint192 low, uint192 high);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`x`|`uint192`||
|`y`|`uint192`||
|`xErr`|`uint192`|{1} error associated with x|
|`yErr`|`uint192`|{1} error associated with y returns low and high extremes of x * y, given errors|


## Errors
### WrongIndex

```solidity
error WrongIndex(uint8 maxLength);
```

### NoToken

```solidity
error NoToken(uint8 tokenNumber);
```

## Structs
### PTConfiguration

```solidity
struct PTConfiguration {
    uint8 nTokens;
    ICurvePool curvePool;
    IERC20Metadata lpToken;
    CurvePoolType poolType;
    AggregatorV3Interface[][] feeds;
    uint48[][] oracleTimeouts;
    uint192[][] oracleErrors;
}
```

## Enums
### CurvePoolType

```solidity
enum CurvePoolType {
    Plain,
    Lending,
    Metapool
}
```

