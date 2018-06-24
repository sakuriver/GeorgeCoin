pragma solidity ^0.4.19;

import "zeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";

contract GeorgeStringToken is ERC721Token {
  uint256 internal nextTokenId = 0;

  struct GeorgeStorage {

    uint256 tokenId; // 主キー

    string value;

  }


  constructor() public ERC721Token("GeorgeStringToken", "GWTKN") {}

  function mint() external {
    uint256 tokenId = nextTokenId;
    nextTokenId = nextTokenId.add(1);
    super._mint(msg.sender, tokenId);
  }

  function setTokenURI(uint256 _tokenId, string _message) external onlyOwnerOf(_tokenId) {
    super._setTokenURI(_tokenId, _message);
  }

  function burn(uint256 _tokenId) external onlyOwnerOf(_tokenId) {
    super._burn(msg.sender, _tokenId);
  }
}

