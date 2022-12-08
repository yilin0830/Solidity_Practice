// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

abstract contract Feline {
    function utterance() public pure virtual returns (bytes32);
}

contract Cat is Feline {
    function utterance() public pure override returns (bytes32) {
        return "miaow";
    }
}