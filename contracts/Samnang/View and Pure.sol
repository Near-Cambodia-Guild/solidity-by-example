// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract ViewandPrueFunction{
    uint public num;

    // function viewFunc() external view returns (uint){
    //     return num;
    // }

    // function pureFunc() external view returns (uint){
    //     return 1;
    // }

    function addToNum(uint x) external view returns (uint){
        return x + num ;
    }

    function add(uint x, uint y) external pure returns (uint){
        return x + y ;
    }
}