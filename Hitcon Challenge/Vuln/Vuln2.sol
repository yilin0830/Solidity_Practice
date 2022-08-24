/*
Points
學習 int 與 unsigned int

目標是達到 10000000000 分，但是我們每次最多只能拿到 10 分。如果我們輸入負的分數會發生什麼事？
*/

pragma solidity ^0.8.10;

contract Vuln2 {
  mapping (address => uint) solverToPoints;

  modifier winCondition() {
    require (solverToPoints[tx.origin] > 10000000000);
    _;
  }

  function getPoints() public view returns (uint) {
    return solverToPoints[tx.origin];
  }

  function addPoints(int _amount) public {
    require (_amount < 10);
    if (_amount >= 0) {
      solverToPoints[tx.origin] += uint(_amount);  
    } else {
      solverToPoints[tx.origin] += uint(-_amount);  
    }
  }
}