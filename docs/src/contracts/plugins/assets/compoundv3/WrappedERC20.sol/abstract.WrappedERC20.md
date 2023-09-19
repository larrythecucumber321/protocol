# WrappedERC20
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/compoundv3/WrappedERC20.sol)

**Inherits:**
[IWrappedERC20](/contracts/plugins/assets/compoundv3/IWrappedERC20.sol/interface.IWrappedERC20.md)

*Implementation of the {IERC20} interface.
This is a "soft-fork" of Open Zeppelin's ERC20 contract but with some notable
changes including:
- The allowance system is changed so that users are either allowed or not.
There are no approved/allowed amounts. `approve` function still exists to
adhere to the ERC-20 interface.
- Adds `allow` for easier authorization and is an easier-to-use alternative
to `approve`.
- All hooks are removed except for `_beforeTokenTransfer` in `_transfer`.
This is done to save on gas.
- All reverts use custom errors instead of strings. Another gas-optimization.
- Adds `hasPermission` which works the same as `allowance` and checks whether
a user is authorized to make balance transfers.
- Some state variables are removed in anticipation of this contract
being inherited by the cUSDCv3 wrapper
Additionally, an {Approval} event is emitted on calls to {transferFrom}.
This allows applications to reconstruct the allowance for all accounts just
by listening to said events. Other implementations of the EIP may not emit
these events, as it isn't required by the specification.*


## State Variables
### _balances

```solidity
mapping(address => uint256) private _balances;
```


### isAllowed

```solidity
mapping(address => mapping(address => bool)) public isAllowed;
```


### _totalSupply

```solidity
uint256 private _totalSupply;
```


### _name

```solidity
string private _name;
```


### _symbol

```solidity
string private _symbol;
```


## Functions
### constructor

*Sets the values for {name} and {symbol}.
The default value of {decimals} is 18. To select a different value for
{decimals} you should overload it.
All two of these values are immutable: they can only be set once during
construction.*


```solidity
constructor(string memory name_, string memory symbol_);
```

### name

*Returns the name of the token.*


```solidity
function name() public view virtual returns (string memory);
```

### symbol

*Returns the symbol of the token, usually a shorter version of the
name.*


```solidity
function symbol() public view virtual returns (string memory);
```

### totalSupply

*See {IERC20-totalSupply}.*


```solidity
function totalSupply() public view virtual override returns (uint256);
```

### balanceOf

*See {IERC20-balanceOf}.*


```solidity
function balanceOf(address account) public view virtual override returns (uint256);
```

### transfer

*See {IERC20-transfer}.
Requirements:
- `to` cannot be the zero address.
- the caller must have a balance of at least `amount`.*


```solidity
function transfer(address to, uint256 amount) public virtual override returns (bool);
```

### allowance

*See {IERC20-allowance}.*


```solidity
function allowance(address owner, address spender) public view virtual override returns (uint256);
```

### approve

*See {IERC20-approve}.
NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
`transferFrom`. This is semantically equivalent to an infinite approval.
Requirements:
- `spender` cannot be the zero address.*


```solidity
function approve(address spender, uint256 amount) public virtual override returns (bool);
```

### transferFrom

*See {IERC20-transferFrom}.
Emits an {Approval} event indicating the updated allowance. This is not
required by the EIP. See the note at the beginning of {ERC20}.
NOTE: Does not update the allowance if the current allowance
is the maximum `uint256`.
Requirements:
- `from` and `to` cannot be the zero address.
- `from` must have a balance of at least `amount`.
- the caller must be authorized to transfer ``from``'s tokens*


```solidity
function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool);
```

### _transfer

*Moves `amount` of tokens from `from` to `to`.
This internal function is equivalent to {transfer}, and can be used to
e.g. implement automatic token fees, slashing mechanisms, etc.
Emits a {Transfer} event.
Requirements:
- `from` cannot be the zero address.
- `to` cannot be the zero address.
- `from` must have a balance of at least `amount`.*


```solidity
function _transfer(address from, address to, uint256 amount) internal virtual;
```

### _mint

*Creates `amount` tokens and assigns them to `account`, increasing
the total supply.
Emits a {Transfer} event with `from` set to the zero address.
Requirements:
- `account` cannot be the zero address.*


```solidity
function _mint(address account, uint256 amount) internal virtual;
```

### _burn

*Destroys `amount` tokens from `account`, reducing the
total supply.
Emits a {Transfer} event with `to` set to the zero address.
Requirements:
- `account` cannot be the zero address.
- `account` must have at least `amount` tokens.*


```solidity
function _burn(address account, uint256 amount) internal virtual;
```

### allow

*Allow or disallow another address to withdraw, or transfer from the sender.
Emits an {Approval} event.
Requirements:
- `owner` cannot be the zero address.
- `manager` cannot be the zero address.*


```solidity
function allow(address account, bool isAllowed_) external;
```

### _allow

*Gives `manager` control over the  `owner` s tokens.
This internal function is equivalent to `allow`, and can be used to
e.g. set automatic allowances for certain subsystems, etc.
Emits an {Approval} event.
Requirements:
- `owner` cannot be the zero address.
- `manager` cannot be the zero address.*


```solidity
function _allow(address owner, address manager, bool isAllowed_) internal;
```

### hasPermission

*Determine if the `manager` has permission to act on behalf of the `owner`.*


```solidity
function hasPermission(address owner, address manager) public view returns (bool);
```

### _beforeTokenTransfer

*Hook that is called before any transfer of tokens. This does not include
minting and burning.
Calling conditions:
- when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
will be transferred to `to`.
- when `from` is zero, `amount` tokens will be minted for `to`.
- when `to` is zero, `amount` of ``from``'s tokens will be burned.
- `from` and `to` are never both zero.*


```solidity
function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual;
```

## Errors
### BadAmount

```solidity
error BadAmount();
```

### Unauthorized

```solidity
error Unauthorized();
```

### ZeroAddress

```solidity
error ZeroAddress();
```

### ExceedsBalance

```solidity
error ExceedsBalance(uint256 amount);
```

