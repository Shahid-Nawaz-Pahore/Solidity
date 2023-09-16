// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DataType{
   //these are state variables store directly on blockchain
       uint256 unsigned_integer=10;
       int256  signed_integer=-10;
       bool boolean=true;
       string name="shahid Nawaz";

       function get() public  view  returns(uint256,int256,bool,string memory){
           return (unsigned_integer,signed_integer,boolean,name);
       }
   
}