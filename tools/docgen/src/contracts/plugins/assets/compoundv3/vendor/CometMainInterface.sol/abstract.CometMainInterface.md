# CometMainInterface
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/assets/compoundv3/vendor/CometMainInterface.sol)

**Author:**
Compound

An efficient monolithic money market protocol


## Functions
### supply


```solidity
function supply(address asset, uint256 amount) external virtual;
```

### supplyTo


```solidity
function supplyTo(address dst, address asset, uint256 amount) external virtual;
```

### supplyFrom


```solidity
function supplyFrom(address from, address dst, address asset, uint256 amount) external virtual;
```

### transfer


```solidity
function transfer(address dst, uint256 amount) external virtual returns (bool);
```

### transferFrom


```solidity
function transferFrom(address src, address dst, uint256 amount) external virtual returns (bool);
```

### transferAsset


```solidity
function transferAsset(address dst, address asset, uint256 amount) external virtual;
```

### transferAssetFrom


```solidity
function transferAssetFrom(address src, address dst, address asset, uint256 amount) external virtual;
```

### withdraw


```solidity
function withdraw(address asset, uint256 amount) external virtual;
```

### withdrawTo


```solidity
function withdrawTo(address to, address asset, uint256 amount) external virtual;
```

### withdrawFrom


```solidity
function withdrawFrom(address src, address to, address asset, uint256 amount) external virtual;
```

### approveThis


```solidity
function approveThis(address manager, address asset, uint256 amount) external virtual;
```

### withdrawReserves


```solidity
function withdrawReserves(address to, uint256 amount) external virtual;
```

### absorb


```solidity
function absorb(address absorber, address[] calldata accounts) external virtual;
```

### buyCollateral


```solidity
function buyCollateral(address asset, uint256 minAmount, uint256 baseAmount, address recipient) external virtual;
```

### quoteCollateral


```solidity
function quoteCollateral(address asset, uint256 baseAmount) public view virtual returns (uint256);
```

### getAssetInfo


```solidity
function getAssetInfo(uint8 i) public view virtual returns (AssetInfo memory);
```

### getAssetInfoByAddress


```solidity
function getAssetInfoByAddress(address asset) public view virtual returns (AssetInfo memory);
```

### getReserves


```solidity
function getReserves() public view virtual returns (int256);
```

### getPrice


```solidity
function getPrice(address priceFeed) public view virtual returns (uint256);
```

### isBorrowCollateralized


```solidity
function isBorrowCollateralized(address account) public view virtual returns (bool);
```

### isLiquidatable


```solidity
function isLiquidatable(address account) public view virtual returns (bool);
```

### totalSupply


```solidity
function totalSupply() external view virtual returns (uint256);
```

### totalBorrow


```solidity
function totalBorrow() external view virtual returns (uint256);
```

### balanceOf


```solidity
function balanceOf(address owner) public view virtual returns (uint256);
```

### borrowBalanceOf


```solidity
function borrowBalanceOf(address account) public view virtual returns (uint256);
```

### pause


```solidity
function pause(bool supplyPaused, bool transferPaused, bool withdrawPaused, bool absorbPaused, bool buyPaused)
    external
    virtual;
```

### isSupplyPaused


```solidity
function isSupplyPaused() public view virtual returns (bool);
```

### isTransferPaused


```solidity
function isTransferPaused() public view virtual returns (bool);
```

### isWithdrawPaused


```solidity
function isWithdrawPaused() public view virtual returns (bool);
```

### isAbsorbPaused


```solidity
function isAbsorbPaused() public view virtual returns (bool);
```

### isBuyPaused


```solidity
function isBuyPaused() public view virtual returns (bool);
```

### accrueAccount


```solidity
function accrueAccount(address account) external virtual;
```

### getSupplyRate


```solidity
function getSupplyRate(uint256 utilization) public view virtual returns (uint64);
```

### getBorrowRate


```solidity
function getBorrowRate(uint256 utilization) public view virtual returns (uint64);
```

### getUtilization


```solidity
function getUtilization() public view virtual returns (uint256);
```

### governor


```solidity
function governor() external view virtual returns (address);
```

### pauseGuardian


```solidity
function pauseGuardian() external view virtual returns (address);
```

### baseToken


```solidity
function baseToken() external view virtual returns (address);
```

### baseTokenPriceFeed


```solidity
function baseTokenPriceFeed() external view virtual returns (address);
```

### extensionDelegate


```solidity
function extensionDelegate() external view virtual returns (address);
```

### supplyKink

*uint64*


```solidity
function supplyKink() external view virtual returns (uint256);
```

### supplyPerSecondInterestRateSlopeLow

*uint64*


```solidity
function supplyPerSecondInterestRateSlopeLow() external view virtual returns (uint256);
```

### supplyPerSecondInterestRateSlopeHigh

*uint64*


```solidity
function supplyPerSecondInterestRateSlopeHigh() external view virtual returns (uint256);
```

### supplyPerSecondInterestRateBase

*uint64*


```solidity
function supplyPerSecondInterestRateBase() external view virtual returns (uint256);
```

### borrowKink

*uint64*


```solidity
function borrowKink() external view virtual returns (uint256);
```

### borrowPerSecondInterestRateSlopeLow

*uint64*


```solidity
function borrowPerSecondInterestRateSlopeLow() external view virtual returns (uint256);
```

### borrowPerSecondInterestRateSlopeHigh

*uint64*


```solidity
function borrowPerSecondInterestRateSlopeHigh() external view virtual returns (uint256);
```

### borrowPerSecondInterestRateBase

*uint64*


```solidity
function borrowPerSecondInterestRateBase() external view virtual returns (uint256);
```

### storeFrontPriceFactor

*uint64*


```solidity
function storeFrontPriceFactor() external view virtual returns (uint256);
```

### baseScale

*uint64*


```solidity
function baseScale() external view virtual returns (uint256);
```

### trackingIndexScale

*uint64*


```solidity
function trackingIndexScale() external view virtual returns (uint256);
```

### baseTrackingSupplySpeed

*uint64*


```solidity
function baseTrackingSupplySpeed() external view virtual returns (uint256);
```

### baseTrackingBorrowSpeed

*uint64*


```solidity
function baseTrackingBorrowSpeed() external view virtual returns (uint256);
```

### baseMinForRewards

*uint104*


```solidity
function baseMinForRewards() external view virtual returns (uint256);
```

### baseBorrowMin

*uint104*


```solidity
function baseBorrowMin() external view virtual returns (uint256);
```

### targetReserves

*uint104*


```solidity
function targetReserves() external view virtual returns (uint256);
```

### numAssets


```solidity
function numAssets() external view virtual returns (uint8);
```

### decimals


```solidity
function decimals() external view virtual returns (uint8);
```

### initializeStorage


```solidity
function initializeStorage() external virtual;
```

## Events
### Supply

```solidity
event Supply(address indexed from, address indexed dst, uint256 amount);
```

### Transfer

```solidity
event Transfer(address indexed from, address indexed to, uint256 amount);
```

### Withdraw

```solidity
event Withdraw(address indexed src, address indexed to, uint256 amount);
```

### SupplyCollateral

```solidity
event SupplyCollateral(address indexed from, address indexed dst, address indexed asset, uint256 amount);
```

### TransferCollateral

```solidity
event TransferCollateral(address indexed from, address indexed to, address indexed asset, uint256 amount);
```

### WithdrawCollateral

```solidity
event WithdrawCollateral(address indexed src, address indexed to, address indexed asset, uint256 amount);
```

### AbsorbDebt
Event emitted when a borrow position is absorbed by the protocol


```solidity
event AbsorbDebt(address indexed absorber, address indexed borrower, uint256 basePaidOut, uint256 usdValue);
```

### AbsorbCollateral
Event emitted when a user's collateral is absorbed by the protocol


```solidity
event AbsorbCollateral(
    address indexed absorber,
    address indexed borrower,
    address indexed asset,
    uint256 collateralAbsorbed,
    uint256 usdValue
);
```

### BuyCollateral
Event emitted when a collateral asset is purchased from the protocol


```solidity
event BuyCollateral(address indexed buyer, address indexed asset, uint256 baseAmount, uint256 collateralAmount);
```

### PauseAction
Event emitted when an action is paused/unpaused


```solidity
event PauseAction(bool supplyPaused, bool transferPaused, bool withdrawPaused, bool absorbPaused, bool buyPaused);
```

### WithdrawReserves
Event emitted when reserves are withdrawn by the governor


```solidity
event WithdrawReserves(address indexed to, uint256 amount);
```

## Errors
### Absurd

```solidity
error Absurd();
```

### AlreadyInitialized

```solidity
error AlreadyInitialized();
```

### BadAsset

```solidity
error BadAsset();
```

### BadDecimals

```solidity
error BadDecimals();
```

### BadDiscount

```solidity
error BadDiscount();
```

### BadMinimum

```solidity
error BadMinimum();
```

### BadPrice

```solidity
error BadPrice();
```

### BorrowTooSmall

```solidity
error BorrowTooSmall();
```

### BorrowCFTooLarge

```solidity
error BorrowCFTooLarge();
```

### InsufficientReserves

```solidity
error InsufficientReserves();
```

### LiquidateCFTooLarge

```solidity
error LiquidateCFTooLarge();
```

### NoSelfTransfer

```solidity
error NoSelfTransfer();
```

### NotCollateralized

```solidity
error NotCollateralized();
```

### NotForSale

```solidity
error NotForSale();
```

### NotLiquidatable

```solidity
error NotLiquidatable();
```

### Paused

```solidity
error Paused();
```

### SupplyCapExceeded

```solidity
error SupplyCapExceeded();
```

### TimestampTooLarge

```solidity
error TimestampTooLarge();
```

### TooManyAssets

```solidity
error TooManyAssets();
```

### TooMuchSlippage

```solidity
error TooMuchSlippage();
```

### TransferInFailed

```solidity
error TransferInFailed();
```

### TransferOutFailed

```solidity
error TransferOutFailed();
```

### Unauthorized

```solidity
error Unauthorized();
```

