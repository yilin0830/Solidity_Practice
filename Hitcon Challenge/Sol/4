pragma solidity ^0.8.0;

interface Vuln4 {
  function submit() external;
}

contract Sol4 {
  function plus(uint a, uint b) public pure returns (uint) {
    // TODO: Implement the plus function here.
    return a+b;
  }
  
  function minus(uint a, uint b) public pure returns (uint) {
    // TODO: Implement the minus function here.
    return a-b;
  }

  function submit(address _address) public {
    Vuln4(_address).submit();
  }

}