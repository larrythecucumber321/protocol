# CometInterface
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/assets/compoundv3/vendor/CometInterface.sol)

**Inherits:**
[CometMainInterface](/tools/docgen/src/contracts/plugins/assets/compoundv3/vendor/CometMainInterface.sol/abstract.CometMainInterface.md), [CometExtInterface](/tools/docgen/src/contracts/plugins/assets/compoundv3/vendor/CometExtInterface.sol/abstract.CometExtInterface.md)

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

