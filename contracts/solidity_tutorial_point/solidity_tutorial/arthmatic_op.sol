// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Athmatic{
    uint256 public result;
    constructor(){
        result=0;
    }
    function Addition(uint256 _x,uint256 _y)public {
        result=_x+_y;
    }
    function Substruction(uint256 _x,uint256 _y)public {
        result=_x-_y;
    }
    function Dividion(uint256 _x,uint256 _y)public {
        require(_y!=0,"divided by zero is not allowed");
        result=_x/_y;
    }
    function Multiplication(uint256 _x,uint256 _y)public {
      result=_x*_y;
    }
    function Modulus(uint256 _x,uint256 _y)public {
        require(_y != 0,"modulud by zero not allowed");
        result=_x%_y;
    }
}