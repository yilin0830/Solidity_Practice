// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.4;

contract Array {
    uint256[] arr_1;
    uint256[] arr_2 = [3,2,4];
    uint256[5] arr_3;
    uint256[][] array2D = [ [1,2,3], [4,5,6] ];
    
    constructor(uint256 _dynamicArrayLength) {
        arr_1 = new uint256[](_dynamicArrayLength);
    }
    
    function getValueOfIndex(uint256 _index) public view returns (uint256) {
        return arr_2[_index];
    }
    
    function addToArray(uint256 _value) public {
        arr_2.push(_value);
    }
    
    function valueCount() public view returns(uint256) {
        return arr_3.length;
    }
    
    function dynamicValueCount() public view returns(uint256) {
        return arr_1.length;
    }
}