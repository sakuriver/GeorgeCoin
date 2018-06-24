pragma solidity ^0.4.19;

import "zeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";

contract GeorgeStringToken is ERC721Token {


  event Mint(address owner, uint256 tokenId);

  uint256 internal nextTokenId = 0;

  struct GeorgeStringStorage {

    uint256 tokenId; // 主キー

    string value;

  }

  /* storage */
  mapping(uint256 => GeorgeStringStorage) georgeStrings;

  constructor() public ERC721Token("GeorgeStringToken", "GSTKN") {}

  function mint(string _value) external {
    uint256 tokenId = nextTokenId;
    GeorgeStringStorage memory georgeString;
    georgeString.tokenId = tokenId;
    georgeString.value = _value;
    georgeStrings[tokenId] = georgeString;
    nextTokenId = nextTokenId.add(1);
    super._mint(msg.sender, tokenId);
  }

  function getGeorgeString(uint256 _tokenId) public view returns (string) {
    GeorgeStringStorage memory georgeString = georgeStrings[_tokenId];
    return (georgeString.value);
  }

  function setTokenURI(uint256 _tokenId, string _message)  external onlyOwnerOf(_tokenId) {
    super._setTokenURI(_tokenId, _message);
  }

  function burn(uint256 _tokenId) external onlyOwnerOf(_tokenId) {
    super._burn(msg.sender, _tokenId);
  }
}