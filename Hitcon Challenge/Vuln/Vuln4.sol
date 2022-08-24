/*
Points
學習 int 與 unsigned int

使用線上的編輯器 Remix 來實作 plus 與 minus 函數在另一個合約中。
再寫個 vuln4 的 interface 呼叫 submit 函數。
挑戰 4 提示
https://gist.github.com/zeze-zeze/d99a7b80fa5b7e3c35f97919e7dec5f2
*/

pragma solidity ^0.8.10;

interface Homework {
  function plus(uint, uint) external returns (uint);
  function minus(uint, uint) external returns (uint);
}


contract Vuln4 {
  mapping (address => bool) solverToSubmitted;

  modifier winCondition() {
    require (solverToSubmitted[tx.origin]);
    _;
  }

  function submit() public {
    Homework homework = Homework(msg.sender);
    require(homework.plus(15434, 23456543) ==  15434 + 23456543);
    require(homework.plus(987654356, 765456) ==  987654356 + 765456);
    require(homework.plus(7230987, 45654) ==  7230987 + 45654);
    require(homework.minus(987654345678, 8765456) ==  987654345678 - 8765456);
    require(homework.minus(12345, 6789) ==  12345 - 6789);
    require(homework.minus(98765432, 8765432) ==  98765432 - 8765432);

    solverToSubmitted[tx.origin] = true;
  }
}