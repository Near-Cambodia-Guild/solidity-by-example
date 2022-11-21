// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Event {
    // Event declaration
    // Up to 3 paramaters can be indexed. 
    // Indexed paramaters helps you filter the logs by the indexed parameter
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test () public {
        emit Log(msg.sender, "Hello World");
        emit Log(msg.sender, "Hello EVM");
        emit AnotherLog();
    }
}