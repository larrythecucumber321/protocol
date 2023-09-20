# StRSRP1Votes
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/p1/StRSRVotes.sol)

**Inherits:**
[StRSRP1](/contracts/p1/StRSR.sol/abstract.StRSRP1.md), [IStRSRVotes](/contracts/interfaces/IStRSRVotes.sol/interface.IStRSRVotes.md)


## State Variables
### _DELEGATE_TYPEHASH

```solidity
bytes32 private constant _DELEGATE_TYPEHASH = keccak256("Delegation(address delegatee,uint256 nonce,uint256 expiry)");
```


### _delegates

```solidity
mapping(address => address) private _delegates;
```


### _eras

```solidity
Checkpoint[] private _eras;
```


### _checkpoints

```solidity
mapping(uint256 => mapping(address => Checkpoint[])) private _checkpoints;
```


### _totalSupplyCheckpoints

```solidity
mapping(uint256 => Checkpoint[]) private _totalSupplyCheckpoints;
```


### __gap
*This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps*


```solidity
uint256[46] private __gap;
```


## Functions
### beginEra

Rebase hook
No need to override beginDraftEra: we are only concerned with raw balances (stakes)


```solidity
function beginEra() internal override;
```

### currentEra


```solidity
function currentEra() external view returns (uint256);
```

### checkpoints


```solidity
function checkpoints(address account, uint48 pos) public view returns (Checkpoint memory);
```

### numCheckpoints


```solidity
function numCheckpoints(address account) public view returns (uint48);
```

### delegates


```solidity
function delegates(address account) public view returns (address);
```

### getVotes


```solidity
function getVotes(address account) public view returns (uint256);
```

### getPastVotes


```solidity
function getPastVotes(address account, uint256 blockNumber) public view returns (uint256);
```

### getPastTotalSupply


```solidity
function getPastTotalSupply(uint256 blockNumber) public view returns (uint256);
```

### getPastEra


```solidity
function getPastEra(uint256 blockNumber) public view returns (uint256);
```

### _checkpointsLookup

Return the value from history `ckpts` that was current for block number `blockNumber`


```solidity
function _checkpointsLookup(Checkpoint[] storage ckpts, uint256 blockNumber) private view returns (uint256);
```

### delegate


```solidity
function delegate(address delegatee) public;
```

### delegateBySig


```solidity
function delegateBySig(address delegatee, uint256 nonce, uint256 expiry, uint8 v, bytes32 r, bytes32 s) public;
```

### _mint


```solidity
function _mint(address account, uint256 amount) internal override;
```

### _burn


```solidity
function _burn(address account, uint256 amount) internal override;
```

### _afterTokenTransfer


```solidity
function _afterTokenTransfer(address from, address to, uint256 amount) internal override;
```

### _delegate


```solidity
function _delegate(address delegator, address delegatee) internal;
```

### _moveVotingPower


```solidity
function _moveVotingPower(address src, address dst, uint256 amount) private;
```

### _writeCheckpoint


```solidity
function _writeCheckpoint(
    Checkpoint[] storage ckpts,
    function(uint256, uint256) view returns (uint256) op,
    uint256 delta
) private returns (uint256 oldWeight, uint256 newWeight);
```

### _add


```solidity
function _add(uint256 a, uint256 b) private pure returns (uint256);
```

### _subtract


```solidity
function _subtract(uint256 a, uint256 b) private pure returns (uint256);
```

## Structs
### Checkpoint

```solidity
struct Checkpoint {
    uint48 fromBlock;
    uint224 val;
}
```

