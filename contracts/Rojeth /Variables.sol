// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

    /*
    + Local
        _ declared inside a function
        _ not stored on the blockchain
    + state
        _ declared outside a function
        _ stored on the blockchain
    + global (provides information about the blockchain)
    */

contract Variables {
    // State Variable
    string public text = "Hello!";
    uint public num = 123;

    function doSomething() public {
        // Local Variable
        // uint i = 456;
    }

    // Global Variable
    uint timestamp = block.timestamp; // Current block timestamp
    address sender = msg.sender; // address of the caller
}