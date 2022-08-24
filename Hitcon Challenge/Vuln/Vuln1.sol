/*
I love hitcon
學習用 web3 做 encode 與 hash

我們可以使用 web3.utils.encodePacked 來編碼字串，並用 web3.utils.keccak256 來做 hash。
*/

pragma solidity ^0.8.10;

contract Vuln1 {
  mapping (address => bool) solverToHitcon;

  modifier winCondition() {
    require (solverToHitcon[tx.origin]);
    _;
  }

  function hitcon(uint _hitcon) public {
    require (_hitcon == uint(keccak256(abi.encodePacked("I love hitcon !!!!!!!!!"))));
    solverToHitcon[tx.origin] = true;
  }
}