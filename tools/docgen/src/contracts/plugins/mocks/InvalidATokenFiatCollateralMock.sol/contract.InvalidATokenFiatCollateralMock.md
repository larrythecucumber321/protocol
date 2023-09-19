# InvalidATokenFiatCollateralMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/mocks/InvalidATokenFiatCollateralMock.sol)

**Inherits:**
[ATokenFiatCollateral](/tools/docgen/src/contracts/plugins/assets/aave/ATokenFiatCollateral.sol/contract.ATokenFiatCollateral.md)


## Functions
### constructor


```solidity
constructor(CollateralConfig memory config, uint192 revenueHiding) ATokenFiatCollateral(config, revenueHiding);
```

### claimRewards

Reverting claimRewards function


```solidity
function claimRewards() external pure override;
```

