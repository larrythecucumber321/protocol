# IFacadeWrite
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/interfaces/IFacadeWrite.sol)

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

