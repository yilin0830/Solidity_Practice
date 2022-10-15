// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Operator {
    uint x = 10;
    uint y = 5;

    function add() public view returns (uint256) {
        return x + y;
    }
    function sub() public view returns (uint256) {
        return x - y;
    }
    function mul() public view returns (uint256) {
        return x * y;
    }
    function div() public view returns (uint256) {
        return x / y;
    }
    function mod() public view returns (uint256) {
        return x % y;
    }
    function inc() public {
        x++;
    }
    function dec() public {
        y--;
    }
}