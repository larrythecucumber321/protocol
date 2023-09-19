# ERC20PermitUpgradeable
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/vendor/ERC20PermitUpgradeable.sol)

**Inherits:**
Initializable, ERC20Upgradeable, IERC20PermitUpgradeable, EIP712Upgradeable

where we failover to SignatureChecker in order to handle approvals for smart contracts.

*Implementation of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
presenting a message signed by the account. By not relying on `{IERC20-approve}`, the token holder account doesn't
need to send a transaction, and thasdfus is not required to hold Ether at all.
Note: We have modified `permit` to support EIP-1271, technically violating EIP-2612.
_Available since v3.4._*


## State Variables
### _nonces

```solidity
mapping(address => CountersUpgradeable.Counter) private _nonces;
```


### _PERMIT_TYPEHASH

```solidity
bytes32 private constant _PERMIT_TYPEHASH =
    keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");
```


### _PERMIT_TYPEHASH_DEPRECATED_SLOT
*In previous versions `_PERMIT_TYPEHASH` was declared as `immutable`.
However, to ensure consistency with the upgradeable transpiler, we will continue
to reserve a slot.*


```solidity
bytes32 private _PERMIT_TYPEHASH_DEPRECATED_SLOT;
```


### __gap
*This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps*


```solidity
uint256[48] private __gap;
```


## Functions
### __ERC20Permit_init

*Initializes the {EIP712} domain separator using the `name` parameter, and setting `version` to
the system-wide semver release version.
It's a good idea to use the same `name` that is defined as the ERC20 token name.*


```solidity
function __ERC20Permit_init(string memory name) internal onlyInitializing;
```

### __ERC20Permit_init_unchained


```solidity
function __ERC20Permit_init_unchained(string memory) internal onlyInitializing;
```

### permit

*See {IERC20Permit-permit}.*


```solidity
function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
    public
    virtual
    override;
```

### nonces

==== MODIFICATIONS START ====
==== MODIFICATIONS END ====

*See {IERC20Permit-nonces}.*


```solidity
function nonces(address owner) public view virtual override returns (uint256);
```

### DOMAIN_SEPARATOR

*See {IERC20Permit-DOMAIN_SEPARATOR}.*


```solidity
function DOMAIN_SEPARATOR() external view override returns (bytes32);
```

### _useNonce

*"Consume a nonce": return the current value and increment.
_Available since v4.1._*


```solidity
function _useNonce(address owner) internal virtual returns (uint256 current);
```

