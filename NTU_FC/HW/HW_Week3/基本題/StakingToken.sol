// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract testERC20 is ERC20 {
    constructor() ERC20("testERC20", "tERC") {
        // _mint(msg.sender, 10 ** (9 + 18));
        _mint(msg.sender, 1_000_000_000 * 1e18);
    }