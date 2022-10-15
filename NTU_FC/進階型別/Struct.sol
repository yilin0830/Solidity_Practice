// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.4;

contract Struct {
    struct User {
        address id;
        string name;
    }

    User owner;
    
    constructor() {
        owner = User(msg.sender, "KryptoCamp");
    }
    
    function getOwnerAddress() public view returns (address) {
        return owner.id;
    }
    
    function getOwnerName() public view returns (string memory) {
        return owner.name;
    }
}