# CometInterface
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/assets/compoundv3/vendor/CometInterface.sol)

**Inherits:**
[CometMainInterface](/src/contracts/plugins/assets/compoundv3/vendor/CometMainInterface.sol/abstract.CometMainInterface.md), [CometExtInterface](/src/contracts/plugins/assets/compoundv3/vendor/CometExtInterface.sol/abstract.CometExtInterface.md)

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

