  // SPDX-License-Identifier: UNLICENSED
    pragma solidity ^0.8.9; 

    contract Constants {
        // coding convention to uppercase constant variables
        address public constant MY_ADDRESS = 0x2381776d931953e142e51620944bDA170eD9C846;
        uint public constant MY_UINT = 1234;
    }

    contract SimpleStorage {
        // State variable to store a number
        uint public num;

        // You need to send a transaction to write to a state variable.
        function set(uint _num) public {
            num = _num;
        }

        // You can read from a state variable without sending a transaction.
        function get() public view returns (uint) {
            return num;
        }
    }