// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Variables {
    // State variables are stored on the blockchain
    string public text  = "Hello";
    uint public num = 123;

    function doSomething() public view {
        // Local variables are stored on the blockchain
        uint i = 456;

        // Here are some global variables
        uint timestamp = block.timestamp;
        address sender = msg.sender;
    }
}

