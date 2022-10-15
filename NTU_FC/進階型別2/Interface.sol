// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Counter {
    uint256 public count;
    
    function inc() external {
        count += 1;
    }
}

interface Counter {
    function count() external view returns (uint256);
    function inc() external;
}

contract Interface {
    function incCounter(address _counter) external {
        Counter(_counter).inc();
    }
    
    function getCount(address _counter) external view returns (uint256) {
        return Counter(_counter).count();
    }
}