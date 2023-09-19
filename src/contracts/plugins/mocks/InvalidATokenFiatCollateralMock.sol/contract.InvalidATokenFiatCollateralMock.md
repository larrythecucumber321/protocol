# InvalidATokenFiatCollateralMock
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/mocks/InvalidATokenFiatCollateralMock.sol)

**Inherits:**
[ATokenFiatCollateral](/src/contracts/plugins/assets/aave/ATokenFiatCollateral.sol/contract.ATokenFiatCollateral.md)


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

