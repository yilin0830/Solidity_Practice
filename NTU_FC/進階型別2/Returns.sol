// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.4;

contract Returns {
    uint256 public x;
    uint256 public y;
    uint256 public z;
    
    function getTrue() public pure returns (bool) {
        return true;
    }
    
    function multipleReturns() public view returns(uint256 a, uint256 b, uint256 c) {
        return (1, 2, 3);
    }
    
    function processMultipleReturns() public view returns(uint256 x, uint256 y, uint256 z) {
        (x,y,z) = multipleReturns();
    }
    
    function getLastReturnValue() public view returns(uint256 z) {
        (,,z) = multipleReturns();
    }
}