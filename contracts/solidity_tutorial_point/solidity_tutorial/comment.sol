// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Comments{
    //initilize the state variable
    uint256 marks;
    /*i make constructor.
    in this i assign the value of marks*/
    constructor(){
        marks=80;
    }
    //in this function i get the marks 
    function getMarks() public  view  returns (uint256){
        return marks;
    }
}