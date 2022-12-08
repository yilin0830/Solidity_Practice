// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Fallback {

    event FallbackCall(string);

    fallback() external payable {
        emit FallbackCall("call me fallback!");
    }
}