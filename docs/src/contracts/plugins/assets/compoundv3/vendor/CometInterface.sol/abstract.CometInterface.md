# CometInterface
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/compoundv3/vendor/CometInterface.sol)

**Inherits:**
[CometMainInterface](/contracts/plugins/assets/compoundv3/vendor/CometMainInterface.sol/abstract.CometMainInterface.md), [CometExtInterface](/contracts/plugins/assets/compoundv3/vendor/CometExtInterface.sol/abstract.CometExtInterface.md)

**Author:**
Compound

An efficient monolithic money market protocol


## Functions
### userBasic


```solidity
function userBasic(address account) external view virtual returns (UserBasic memory);
```

## Structs
### UserBasic

```solidity
struct UserBasic {
    int104 principal;
    uint64 baseTrackingIndex;
    uint64 baseTrackingAccrued;
}
```

