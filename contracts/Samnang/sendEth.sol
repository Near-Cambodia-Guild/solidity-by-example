// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9; 

    // 3 ways to send Eth
    // transfer - 2300 gas, reverts
    // send - 2300 gas , returns bool
    // call - all gas, returns bool and data

contract SendEther{

    constructor () payable {}

    receive () external payable {}

    function sendViaTransfer(address payable _to) external payable {
        _to.transfer(123);
    }
    function sendVaiSend(address payable _to) external payable {
        bool sent = _to.send(123);
        require(sent,"send failed");

    }

    function sendViaCall(address payable _to ) external payable {
        (bool success, ) = _to.call{value: 123}("");
        require(success,"Call failed");

    }
}

contract EthReceiver {
    event Log(uint amout,uint gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
        
    }
}
