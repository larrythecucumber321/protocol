# ConvexStakingWrapper
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/assets/convex/vendor/ConvexStakingWrapper.sol)

**Inherits:**
[ERC20](/tools/docgen/src/contracts/plugins/assets/aave/ERC20.sol/contract.ERC20.md), [ReentrancyGuard](/tools/docgen/src/contracts/plugins/assets/aave/ReentrancyGuard.sol/abstract.ReentrancyGuard.md)


## State Variables
### convexBooster

```solidity
address public constant convexBooster = address(0xF403C135812408BFbE8713b5A23a04b3D48AAE31);
```


### crv

```solidity
address public constant crv = address(0xD533a949740bb3306d119CC777fa900bA034cd52);
```


### cvx

```solidity
address public constant cvx = address(0x4e3FBD56CD56c3e72c1403e103b45Db9da5B9D2B);
```


### curveToken

```solidity
address public curveToken;
```


### convexToken

```solidity
address public convexToken;
```


### convexPool

```solidity
address public convexPool;
```


### convexPoolId

```solidity
uint256 public convexPoolId;
```


### collateralVault

```solidity
address public collateralVault;
```


### CRV_INDEX

```solidity
uint256 private constant CRV_INDEX = 0;
```


### CVX_INDEX

```solidity
uint256 private constant CVX_INDEX = 1;
```


### rewards

```solidity
RewardType[] public rewards;
```


### registeredRewards

```solidity
mapping(address => uint256) public registeredRewards;
```


### isInit

```solidity
bool public isInit;
```


### owner

```solidity
address public owner;
```


### _isShutdown

```solidity
bool internal _isShutdown;
```


### _tokenname

```solidity
string internal _tokenname;
```


### _tokensymbol

```solidity
string internal _tokensymbol;
```


## Functions
### constructor


```solidity
constructor() public ERC20("StakedConvexToken", "stkCvx");
```

### initialize


```solidity
function initialize(uint256 _poolId) external virtual;
```

### name


```solidity
function name() public view override returns (string memory);
```

### symbol


```solidity
function symbol() public view override returns (string memory);
```

### decimals


```solidity
function decimals() public view override returns (uint8);
```

### onlyOwner


```solidity
modifier onlyOwner();
```

### transferOwnership


```solidity
function transferOwnership(address newOwner) public virtual onlyOwner;
```

### renounceOwnership


```solidity
function renounceOwnership() public virtual onlyOwner;
```

### shutdown


```solidity
function shutdown() external onlyOwner;
```

### isShutdown


```solidity
function isShutdown() public view returns (bool);
```

### setApprovals


```solidity
function setApprovals() public;
```

### addRewards


```solidity
function addRewards() public;
```

### rewardLength


```solidity
function rewardLength() external view returns (uint256);
```

### _getDepositedBalance


```solidity
function _getDepositedBalance(address _account) internal view virtual returns (uint256);
```

### _getTotalSupply


```solidity
function _getTotalSupply() internal view virtual returns (uint256);
```

### _calcRewardIntegral


```solidity
function _calcRewardIntegral(
    uint256 _index,
    address[2] memory _accounts,
    uint256[2] memory _balances,
    uint256 _supply,
    bool _isClaim
) internal;
```

### _checkpoint


```solidity
function _checkpoint(address[2] memory _accounts) internal nonReentrant;
```

### _checkpointAndClaim


```solidity
function _checkpointAndClaim(address[2] memory _accounts) internal nonReentrant;
```

### _claimExtras


```solidity
function _claimExtras() internal virtual;
```

### user_checkpoint


```solidity
function user_checkpoint(address _account) external returns (bool);
```

### totalBalanceOf


```solidity
function totalBalanceOf(address _account) external view returns (uint256);
```

### earned


```solidity
function earned(address _account) external returns (EarnedData[] memory claimable);
```

### earnedView


```solidity
function earnedView(address _account) external view returns (EarnedData[] memory claimable);
```

### _earned


```solidity
function _earned(address _account) internal view returns (EarnedData[] memory claimable);
```

### claimRewards


```solidity
function claimRewards() external;
```

### getReward


```solidity
function getReward(address _account) external;
```

### getReward


```solidity
function getReward(address _account, address _forwardTo) external;
```

### deposit


```solidity
function deposit(uint256 _amount, address _to) external;
```

### stake


```solidity
function stake(uint256 _amount, address _to) external;
```

### withdraw


```solidity
function withdraw(uint256 _amount) external;
```

### withdrawAndUnwrap


```solidity
function withdrawAndUnwrap(uint256 _amount) external;
```

### _beforeTokenTransfer


```solidity
function _beforeTokenTransfer(address _from, address _to, uint256) internal override;
```

## Events
### Deposited

```solidity
event Deposited(address indexed _user, address indexed _account, uint256 _amount, bool _wrapped);
```

### Withdrawn

```solidity
event Withdrawn(address indexed _user, uint256 _amount, bool _unwrapped);
```

### OwnershipTransferred

```solidity
event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
```

### RewardsClaimed

```solidity
event RewardsClaimed(IERC20 indexed erc20, uint256 indexed amount);
```

## Structs
### EarnedData

```solidity
struct EarnedData {
    address token;
    uint256 amount;
}
```

### RewardType

```solidity
struct RewardType {
    address reward_token;
    address reward_pool;
    uint128 reward_integral;
    uint128 reward_remaining;
    mapping(address => uint256) reward_integral_for;
    mapping(address => uint256) claimable_reward;
}
```

