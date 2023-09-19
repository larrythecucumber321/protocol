# PermitLib
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/libraries/Permit.sol)

Internal library for verifying metatx sigs for EOAs and smart contract wallets
See ERC1271


## Functions
### requireSignature


```solidity
function requireSignature(address owner, bytes32 hash, uint8 v, bytes32 r, bytes32 s) internal view;
```

