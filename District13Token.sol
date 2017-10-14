pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract District13Token is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function District13Token(address _owner)  UpgradeableToken(_owner) {
    name = "District13Token";
    symbol = "D13";
    totalSupply = 3000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}