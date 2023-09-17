// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ComparisonOperators {
    // State variables
    uint public number1;
    uint public number2;
    bool public isEqual;
    bool public isNotEqual;
    bool public isLessThan;
    bool public isLessThanOrEqual;
    bool public isGreaterThan;
    bool public isGreaterThanOrEqual;

    // Constructor to initialize state variables
    constructor(uint _number1, uint _number2) {
        number1 = _number1;
        number2 = _number2;
    }

    // Function to perform comparison operations
    function performComparisons() public {
        isEqual = (number1 == number2);
        isNotEqual = (number1 != number2);
        isLessThan = (number1 < number2);
        isLessThanOrEqual = (number1 <= number2);
        isGreaterThan = (number1 > number2);
        isGreaterThanOrEqual = (number1 >= number2);
    }
}
