# AllowListVerifier
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/plugins/mocks/vendor/EasyAuction.sol)



*Standardized interface for an allowList manager for easyAuction
The interface was inspired by EIP-1271*


## Functions
### isAllowed

*Should return whether the a specific user has access to an auction
by returning the magic value from AllowListVerifierHelper*


```solidity
function isAllowed(address user, uint256 auctionId, bytes calldata callData) external view returns (bytes4);
```

