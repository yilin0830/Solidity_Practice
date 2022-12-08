// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() ERC20("BoralinToken", "BT") {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }
      
    function mintToken(uint amount, address to) public{
        _mint(to, amount);
    }
    
}