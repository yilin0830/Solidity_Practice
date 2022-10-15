// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract RelationalOperator {
    function equal(uint256 left, uint256 right) public pure returns (bool) {
        return left == right;
    }
    
    function notEqual(uint256 left, uint256 right) public pure returns (bool) {
        return left != right;
    }
    
    function GT(uint256 left, uint256 right) public pure returns (bool) {
        return left > right;
    }
    
    function LT(uint256 left, uint256 right) public pure returns (bool) {
        return left < right;
    }
    
    function GTE(uint256 left, uint256 right) public pure returns (bool) {
        return left >= right;
    }
    
    function LTE(uint256 left, uint256 right) public pure returns (bool) {
        return left <= right;
    }
}