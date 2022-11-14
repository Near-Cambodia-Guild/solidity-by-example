  // SPDX-License-Identifier: UNLICENSED
    pragma solidity ^0.8.9; 
contract Counter {
    uint public count;

    function inc() external{
        count +=1;
    }

    function dec() external{
        count -= 1;
    }
}