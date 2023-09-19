# ERC1271Mock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/mocks/ERC1271Mock.sol)

Represents a simple smart contract wallet that provides approvals via ERC1271
https://eips.ethereum.org/EIPS/eip-1271


## State Variables
### MAGICVALUE

```solidity
bytes4 internal constant MAGICVALUE = 0x1626ba7e;
```


### approvalsOn

```solidity
bool public approvalsOn = false;
```


## Functions
### enableApprovals


```solidity
function enableApprovals() external;
```

### disableApprovals


```solidity
function disableApprovals() external;
```

### isValidSignature

*Should return whether the signature provided is valid for the provided hash
MUST return the bytes4 magic value 0x1626ba7e when function passes.
MUST NOT modify state (using STATICCALL for solc < 0.5, view modifier for solc > 0.5)
MUST allow external calls*


```solidity
function isValidSignature(bytes32, bytes memory) public view returns (bytes4 magicValue);
```

