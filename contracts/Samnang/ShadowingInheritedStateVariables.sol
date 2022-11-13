  // SPDX-License-Identifier: UNLICENSED
    pragma solidity ^0.8.9; 

    contract A {
        string public name = "Contract A";
        function get () public view returns(string memory){
            return name;
        }
    }

    //this will not compile
    contract B is A{
        // this is the correct way to override inherited state variables.
        constructor() {
            name = "Contract C";
        }

        // C.getName returns " Contract C "
    }