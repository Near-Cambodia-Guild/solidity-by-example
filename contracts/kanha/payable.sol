// SPDX-License-Identifier: MIT
pragma solidity^0.8.13;

contract Payable {
    address payable public owner;
     
    constructor() {
        owner = payable(msg.sender);

    }

    function deposite() external payable returns (uint) {}

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
     function notPayable() public {}
     
     function withdraw() public {
       
        uint amount = address(this).balance;

        // send all Ether to owner
        // Owner can receive Ether since the address of owner is payable
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether");
    }
}


