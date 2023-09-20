# Components
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/interfaces/IMain.sol)

Main is a central hub that maintains a list of Component contracts.
Components:
- perform a specific function
- defer auth to Main
- usually (but not always) contain sizeable state that require a proxy


```solidity
struct Components {
    IRToken rToken;
    IStRSR stRSR;
    IAssetRegistry assetRegistry;
    IBasketHandler basketHandler;
    IBackingManager backingManager;
    IDistributor distributor;
    IFurnace furnace;
    IBroker broker;
    IRevenueTrader rsrTrader;
    IRevenueTrader rTokenTrader;
}
```

