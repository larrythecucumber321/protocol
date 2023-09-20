# Owned
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/EACAggregatorProxyMock.sol)

A contract with helpers for basic contract ownership.


## State Variables
### owner

```solidity
address public owner;
```


### pendingOwner

```solidity
address private pendingOwner;
```


## Functions
### constructor


```solidity
constructor();
```

### transferOwnership

*Allows an owner to begin transferring ownership to a new address,
pending.*


```solidity
function transferOwnership(address _to) external onlyOwner;
```

### acceptOwnership

*Allows an ownership transfer to be completed by the recipient.*


```solidity
function acceptOwnership() external;
```

### onlyOwner

*Reverts if called by anyone other than the contract owner.*


```solidity
modifier onlyOwner();
```

## Events
### OwnershipTransferRequested

```solidity
event OwnershipTransferRequested(address indexed from, address indexed to);
```

### OwnershipTransferred

```solidity
event OwnershipTransferred(address indexed from, address indexed to);
```

