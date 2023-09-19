# GovernanceRoles
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/interfaces/IFacadeWrite.sol)

The set of roles required (owner, guardian, pausers, and freezers)


```solidity
struct GovernanceRoles {
    address owner;
    address guardian;
    address[] pausers;
    address[] shortFreezers;
    address[] longFreezers;
}
```

