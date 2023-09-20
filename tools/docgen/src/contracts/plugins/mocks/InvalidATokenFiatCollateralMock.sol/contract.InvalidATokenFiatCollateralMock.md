# InvalidATokenFiatCollateralMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/InvalidATokenFiatCollateralMock.sol)

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

