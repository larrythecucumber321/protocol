# GovernanceRoles
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IFacadeWrite.sol)

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

