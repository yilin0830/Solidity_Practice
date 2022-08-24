pragma solidity ^0.8.0;

contract Sol5_test{
    // Remember to check the transaction GasLimit setting in Metamask.
    // It is suggest to be higher than 400000 if early break is applied.
    // It is suggest to be higher than 1000000 if early break is not applied.
    // Be careful for block maximum gas limit.
    bytes8 public key;
    uint64 public key2;
    function hack() public returns(bytes8){
        bool fund;
        while(!fund){
            ++key2;
            unchecked {
                // TODO: Implement the calculation of key value here.
                //       Noted the way to turn contract address into uint64 is uint64(uint160(address(this)))
                if(uint64(uint160(address(this))) ^ key2 == uint64(0) - 1) {
                    fund = !fund;
                }
                
            }
        }
        key = bytes8(key2);
        return key;
    }
}