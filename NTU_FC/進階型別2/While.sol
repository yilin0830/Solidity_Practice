// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.4;

contract While {
    uint256[] numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    
    function countEvenNumbers() public view returns (uint256) {
        uint256 count = 0;
        uint256 i = 0;
        
        while (i < numbers.length) {
            if (isEvenNumber(numbers[i])) {
                count++;
            }
            i++;
        }
        
        return count;
    }
    
    function isEvenNumber(uint256 _number) public view returns (bool) {
        return (_number % 2 == 0 ? true : false);
    }
}