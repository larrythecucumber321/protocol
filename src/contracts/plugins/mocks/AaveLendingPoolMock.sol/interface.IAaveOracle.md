# IAaveOracle
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/mocks/AaveLendingPoolMock.sol)


## Functions
### WETH


```solidity
function WETH() external view returns (address);
```

### getAssetPrice


```solidity
function getAssetPrice(address token) external view returns (uint256);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`uint256`|{qETH/tok} The price of the `token` in ETH with 18 decimals|


