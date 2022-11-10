  // SPDX-License-Identifier: UNLICENSED
    pragma solidity ^0.8.9; 

    contract Event {
        //Event decleration
        //Up to 3 parameters can be indexed
        // Indexed parameters helps you filter the logs by the indexed parameter

        event Log(address indexed sender, string message);
        event AntherLog();


        function test() public {
            emit Log(msg.sender,"Hellow World!");
            emit Log(msg.sender,"Hello EVM!");
            emit AntherLog();
        }
    }