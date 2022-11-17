  // SPDX-License-Identifier: UNLICENSED
    pragma solidity ^0.8.9; 

    contract FunctionIntro {
        function add (uint x , uint y) external pure returns(uint){
            return x + y;
        }
        function sub (uint x , uint y) external pure returns(uint){
            return x - y;
        }
    }