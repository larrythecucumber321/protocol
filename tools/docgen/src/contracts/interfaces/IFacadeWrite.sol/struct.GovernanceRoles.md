# GovernanceRoles
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IFacadeWrite.sol)

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

