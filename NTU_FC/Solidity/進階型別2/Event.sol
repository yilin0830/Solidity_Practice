// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Event {
    event MyPushLog(uint256 indexed);

    function debugMode(uint256 _message) public {
        emit MyPushLog(_message);
    }
}