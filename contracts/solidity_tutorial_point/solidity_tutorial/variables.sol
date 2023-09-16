// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Variables{

    uint256 total;//state variable

    function add(uint256 _x,uint256 _y) public {
        total=_x+_y;//add local variables and assign total to state variable
    }
     function get()public view returns (uint256){
         return total;
     }
}