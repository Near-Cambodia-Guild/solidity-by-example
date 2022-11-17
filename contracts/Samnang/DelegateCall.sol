  // SPDX-License-Identifier: UNLICENSED
    pragma solidity ^0.8.9; 

    contract TestDelegateCall {
        uint public num;
        address public sender;
        uint public value;

        function setvars(uint _num)external payable{
            num= _num;
            sender= msg.sender;
            value = msg.value;
        }
    }

    contract DelegateCall {
        uint public num;
        address public sender;
        uint public value;

        function setVars(address _test,uint _num) external payable {
            
        }
    }