# AllowListVerifier
[Git Source](https://github.com/larrythecucumber321/protocol/blob/0e60393685a4ae7994ac986273cdfa4cf9c069ed/contracts/plugins/mocks/vendor/EasyAuction.sol)



*Standardized interface for an allowList manager for easyAuction
The interface was inspired by EIP-1271*


## Functions
### isAllowed

*Should return whether the a specific user has access to an auction
by returning the magic value from AllowListVerifierHelper*


```solidity
function isAllowed(address user, uint256 auctionId, bytes calldata callData) external view returns (bytes4);
```

