// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Event{

    event log(string massage , uint val);
    event Indexedlog(address indexed sender , uint val);

    function examples()external {
        emit log("foo",123);
        emit Indexedlog(msg.sender,789);
    }

    event Massage(address indexed _from,address indexed _to,string massage);
    
    function sendMassage(address _to,string calldata massage)external{
        emit Massage(msg.sender,_to,massage);
    }

}

