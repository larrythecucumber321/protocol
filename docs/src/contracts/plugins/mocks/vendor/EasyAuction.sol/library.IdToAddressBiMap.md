# IdToAddressBiMap
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/vendor/EasyAuction.sol)


## Functions
### hasId


```solidity
function hasId(Data storage self, uint64 id) internal view returns (bool);
```

### hasAddress


```solidity
function hasAddress(Data storage self, address addr) internal view returns (bool);
```

### getAddressAt


```solidity
function getAddressAt(Data storage self, uint64 id) internal view returns (address);
```

### getId


```solidity
function getId(Data storage self, address addr) internal view returns (uint64);
```

### insert


```solidity
function insert(Data storage self, uint64 id, address addr) internal returns (bool);
```

## Structs
### Data

```solidity
struct Data {
    mapping(uint64 => address) idToAddress;
    mapping(address => uint64) addressToId;
}
```
