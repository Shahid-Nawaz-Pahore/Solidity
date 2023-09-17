// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract A{
    uint256 public  pData=10;
    uint256 internal iData=20;

    function x() public  returns (uint256 ){
        pData=1;
        //iData=2;
        return (pData);
    }

}

contract B{
    A a=new A();
    uint256 public bb= a.pData();

    function b()public  view returns (uint256){
        return a.pData();
    }
}

contract C is A{
    function c()public returns(uint256) {
        iData=89;
        return iData;
    }
}