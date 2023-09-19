# AllowListVerifierHelper
[Git Source](https://github.com/larrythecucumber321/protocol/blob/3222eb21fbb20ddd3d3fa2233072dfa96ea3e340/contracts/plugins/mocks/vendor/EasyAuction.sol)


## State Variables
### MAGICVALUE
*Value returned by a call to `isAllowed` if the check
was successful. The value is defined as:
bytes4(keccak256("isAllowed(address,uint256,bytes)"))*


```solidity
bytes4 internal constant MAGICVALUE = 0x19a05a7e;
```


