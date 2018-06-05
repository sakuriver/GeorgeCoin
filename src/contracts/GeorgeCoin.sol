pragma solidity ^0.4.19;
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract GeorgeCoin is StandardToken {
  string public name = "GeorgeCoin";
  string public symbol = "GeC";
  uint public decimals = 18;
  uint public rate;

  function GeorgeCoin(
  uint initialSupply,
  uint256 tokenRate) public {
    totalSupply_ = initialSupply;
    rate = tokenRate;
    balances[msg.sender] = initialSupply;
  }
}