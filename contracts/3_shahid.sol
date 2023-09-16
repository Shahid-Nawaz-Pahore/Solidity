// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
contract SolidityTest {
  
   function getResult() public pure  returns(uint){
      uint a = 1;
      uint b = 2;
      uint result = a + b;
      result++;
      return result;
   }
}