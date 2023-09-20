# PermitLib
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/libraries/Permit.sol)

Internal library for verifying metatx sigs for EOAs and smart contract wallets
See ERC1271


## Functions
### requireSignature


```solidity
function requireSignature(address owner, bytes32 hash, uint8 v, bytes32 r, bytes32 s) internal view;
```

