# IFacadeWrite
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/interfaces/IFacadeWrite.sol)

A UX-friendly layer for interactin with the protocol


## Functions
### deployRToken

Deploys an instance of an RToken


```solidity
function deployRToken(ConfigurationParams calldata config, SetupParams calldata setup) external returns (address);
```

### setupGovernance

Sets up governance for an RToken


```solidity
function setupGovernance(
    IRToken rToken,
    bool deployGovernance,
    bool unfreeze,
    GovernanceParams calldata govParams,
    GovernanceRoles calldata govRoles
) external returns (address);
```

## Events
### GovernanceCreated
Emitted when a new Governance is deployed


```solidity
event GovernanceCreated(IRToken indexed rToken, address indexed governance, address indexed timelock);
```

