# AllowListVerifierHelper
[Git Source](https://github.com/larrythecucumber321/protocol/blob/aabf2c9d4120808940fb3be9193cb66ea71ac351/contracts/plugins/mocks/vendor/EasyAuction.sol)


## State Variables
### MAGICVALUE
*Value returned by a call to `isAllowed` if the check
was successful. The value is defined as:
bytes4(keccak256("isAllowed(address,uint256,bytes)"))*


```solidity
bytes4 internal constant MAGICVALUE = 0x19a05a7e;
```


