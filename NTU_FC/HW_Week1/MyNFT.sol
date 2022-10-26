// contracts/GameItem.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyNFT is ERC721 {
    constructor() ERC721("BoralinNFT", "BNFT") {}

    function mint() public {
        _mint(msg.sender, 0);
        _mint(msg.sender, 1);
    }

    function mintToken(uint tokenId, address to) public{
        _mint(to, tokenId);
    }

}