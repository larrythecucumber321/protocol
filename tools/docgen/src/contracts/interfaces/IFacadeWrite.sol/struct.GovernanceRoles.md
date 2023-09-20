# GovernanceRoles
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IFacadeWrite.sol)

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

