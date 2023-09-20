# IRegistry
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/convex/vendor/ConvexInterfaces.sol)


## Functions
### get_registry


```solidity
function get_registry() external view returns (address);
```

### get_address


```solidity
function get_address(uint256 _id) external view returns (address);
```

### gauge_controller


```solidity
function gauge_controller() external view returns (address);
```

### get_lp_token


```solidity
function get_lp_token(address) external view returns (address);
```

### get_gauges


```solidity
function get_gauges(address) external view returns (address[10] memory, uint128[10] memory);
```

