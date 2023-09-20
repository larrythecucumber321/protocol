# CometInterface
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/assets/compoundv3/vendor/CometInterface.sol)

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

