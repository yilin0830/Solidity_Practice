/*
Solidity 101
學習用 web3 呼叫函數

很高興見到你開始了挑戰，我們將要通過第零關。
首先從下方程式碼可以看到 modifier winCondition，它就是我們的目標，其中可以看到 require，必須要滿足裡面的條件。
使用 await contract.methods.<要執行的函數>(函數的參數).send({from:player}) 可以呼叫目標函數。
*/

pragma solidity ^0.8.10;

contract Vuln0 {
  struct tutorial {
    bool knowPlayerAddress;
    bool knowContractAddress;
    bool knowUint;
  }

  mapping (address => tutorial) solverToTutorial;

  modifier winCondition() {
    require (solverToTutorial[tx.origin].knowPlayerAddress);
    require (solverToTutorial[tx.origin].knowContractAddress);
    require (solverToTutorial[tx.origin].knowUint);
    _;
  }

  function giveMeYourAddress(address _player) public {
    require (_player == tx.origin);
    solverToTutorial[tx.origin].knowPlayerAddress = true;
  }

  function giveMeContractAddress(address _contract) public {
    require (_contract == address(this));
    solverToTutorial[tx.origin].knowContractAddress = true;
  }

  function giveMeUint(uint _num) public {
    require (_num == 13371337);
    solverToTutorial[tx.origin].knowUint = true;
  }
}