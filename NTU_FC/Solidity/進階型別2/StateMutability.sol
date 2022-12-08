// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.4;

contract StateMutability {
    function coreFunction() [visibility] [mutability] returns (bool) {
        return true;
    }
}