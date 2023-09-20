# IAaveOracle
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/AaveLendingPoolMock.sol)


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

