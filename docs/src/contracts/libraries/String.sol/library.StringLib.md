# StringLib
[Git Source](https://github.com/larrythecucumber321/protocol/blob/77d337b8595ba96d069ded321419b36a61984170/contracts/libraries/String.sol)


## Functions
### toLower

Convert any basic uppercase chars (A-Z) in str to lowercase

*This is safe for general Unicode strings in UTF-8, because every byte representing a
multibyte codepoint has its high bit set to 1, and this only modifies bytes with a high bit
set to 0. As a result, this function will _not_ transform any multi-byte capital letters,
like Ö, À, or Æ, to lowercase. That's much harder, and this is sufficient for our purposes.*


```solidity
function toLower(string memory str) internal pure returns (string memory);
```

