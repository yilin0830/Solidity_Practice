// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.4;

contract Modifier {
    address owner;
    uint256 amountPerAddress = 5;
    
    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        require(owner == msg.sender);
        _;
    }
    
    modifier maxAmount(uint256 _amount) {
        require(_amount < amountPerAddress);
        _;
    }
    
    function importantFunction() public onlyOwner view returns (string memory) {
        return "Hello you are owner!";
    }

    function updateAmountPerAddress(uint256 _amount) public onlyOwner {
        amountPerAddress = _amount;
    }

    function buySomething(uint256 _amount) public maxAmount(_amount) view returns (string memory) {
        return "Success!";
    }
}