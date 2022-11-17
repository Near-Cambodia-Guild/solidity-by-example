// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract sendEther {
    constructor() payable {}

    receive() external payable{}

    function sendVaiTransfer(address payable _to)external payable {
        return _to.transfer(123);
    }

    function sendVaisend(address payable _to)public payable {
        bool sent = _to.send(123) ; 
        require (sent, "send faild");
  
    }

    function sendVaicall(address payable _to)external payable {
        (bool success,)=_to.call{value:123} ("");
        require (success ,"call faild");
    
    }

}
contract riceivEther{
    event log(uint amount , uint gas);
    receive ()external payable{
        emit log(msg.value, gasleft());
    }


}

