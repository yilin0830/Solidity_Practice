// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.4;

contract Address {  
    address public owner = 0x;
    constructor() {}

    function getOnwerBalance() public view returns(uint256) {
        return owner.balance;
    }


    receive() external payable {}
    fallback() external payable {}

}