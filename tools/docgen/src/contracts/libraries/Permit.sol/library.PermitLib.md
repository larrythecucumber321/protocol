# PermitLib
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/libraries/Permit.sol)

Internal library for verifying metatx sigs for EOAs and smart contract wallets
See ERC1271


## Functions
### requireSignature


```solidity
function requireSignature(address owner, bytes32 hash, uint8 v, bytes32 r, bytes32 s) internal view;
```

