/*
Authentication
學習讀區塊鏈上的 slot

在區塊鏈上的 private 變數並不是真的無法讀取。
我們可以透過 web3.eth.getStorageAt(instance, 0) 來讀取第一個 slot。
另外使用 web3.utils.toAscii 可以把 byte32 轉成 string 型別，或是 web3.utils.fromAscii把字串轉成 byte32。
*/

pragma solidity ^0.8.10;

contract Vuln3 {
  bytes32 private password;
  mapping (address => bool) public solverToAuth;
  constructor(bytes32 _password) {
    password = _password;
  }

  modifier winCondition() {
    require (solverToAuth[tx.origin]);
    _;
  }

  function auth(bytes32 _password) public {
    if (password == _password) {
      solverToAuth[tx.origin] = true;
    }
  }
}