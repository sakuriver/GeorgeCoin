pragma solidity ^0.4.19;
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract GeorgeCoin is StandardToken {
  string public name = "GeorgeCoin";
  string public symbol = "GeC";
  uint public decimals = 18;

  function GeorgeCoin(uint initialSupply) public {
    totalSupply_ = initialSupply;
    balances[msg.sender] = initialSupply;
  }
}