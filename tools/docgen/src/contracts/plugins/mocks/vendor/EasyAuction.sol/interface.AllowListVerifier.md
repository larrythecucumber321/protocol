# AllowListVerifier
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/mocks/vendor/EasyAuction.sol)



*Standardized interface for an allowList manager for easyAuction
The interface was inspired by EIP-1271*


## Functions
### isAllowed

*Should return whether the a specific user has access to an auction
by returning the magic value from AllowListVerifierHelper*


```solidity
function isAllowed(address user, uint256 auctionId, bytes calldata callData) external view returns (bytes4);
```

