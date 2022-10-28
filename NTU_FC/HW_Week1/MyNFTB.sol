// contracts/GameItem.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";

contract MyNFTB is ERC721, ERC721Burnable  {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("BoralinNFT", "BNFT") {
        
        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        _tokenIds.increment();

        
        newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        _tokenIds.increment();
    }

    function mintToken(uint amount, address to) public{
        for (uint256 i = 0; i < amount; i++) {
            uint256 newItemId = _tokenIds.current();
            _mint(to, newItemId);
            _tokenIds.increment();
        }
    }

    function burn(uint256 tokenId) public override{
      _burn(tokenId);
    }

}