// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LogicalOperators {
    // State variables
    bool public a = true;
    bool public b = false;
    bool public resultAnd;
    bool public resultOr;
    bool public resultNot;

    // Function to perform logical AND
    function performLogicalAnd() public {
        resultAnd = a && b;
    }

    // Function to perform logical OR
    function performLogicalOr() public {
        resultOr = a || b;
    }

    // Function to perform logical NOT
    function performLogicalNot() public {
        resultNot = !a;
    }
}
