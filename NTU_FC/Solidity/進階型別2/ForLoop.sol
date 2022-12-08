// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.4;

contract ForLoop {
    uint256[] numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    
    function countEvenNumbers() public view returns (uint256) {
        uint256 count = 0;
        
        for (uint256 i = 0; i < numbers.length; i++) {
            if (isEvenNumber(numbers[i])) {
                count++;
            }
        }
        
        return count;
    }
    
    function isEvenNumber(uint256 _number) public view returns (bool) {
        return (_number % 2 == 0 ? true : false);
    }
}