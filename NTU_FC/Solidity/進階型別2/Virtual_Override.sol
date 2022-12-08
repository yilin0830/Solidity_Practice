// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Virtual {

    uint256 public counter = 0;

    function incCount() public virtual {
        counter++;
    }
}

contract Override is Virtual {
    function incCount() public override {
        counter += 2;
    }
}