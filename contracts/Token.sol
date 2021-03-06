pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/token/ERC20/CappedToken.sol';
import 'zeppelin-solidity/contracts/token/ERC20/PausableToken.sol';
import 'zeppelin-solidity/contracts/token/ERC20/BurnableToken.sol';

/*
  Token is PausableToken and on the creation it is paused.
  It is made so because you don't want token to be transferable etc,
  while your ico is not over.
*/
contract Token is CappedToken, PausableToken, BurnableToken {

  uint256 private constant TOKEN_CAP = 1000 * 10**24;

  string public constant name = "PetSource token";
  string public constant symbol = "PTS";
  uint8 public constant decimals = 18;

  function Token() public CappedToken(TOKEN_CAP) {
    paused = true;
  }
}
