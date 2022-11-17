// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// contract testCall {
//     string public message;
//     uint public x;
//         event log(string message);
//     fallback() external payable {
//         emit log ("fallback called");

//     }
//     function foo(string memory _message,uint _x)public payable returns(bool,uint){
//         message = _message;
//         x = _x;
//         return (true,333);
//     }
// }

// contract call {
//     function callFoo(address _test) external {
//         _test.call(abi.encodeWithSignature("foo(string,uint256)"));

//     }
// }

contract Receiver {
    event Received(address caller, uint amount, string message);

    // fallback() external payable {
    //     emit Received(msg.sender, msg.value, "Fallback was called");
    // }
   

    function foo(string memory _message, uint _x) public payable returns (uint) {
        emit Received(msg.sender, msg.value, _message);

        return _x + 1;
        
    }
}

contract Caller {
    event Response(bool success, bytes data);

    function testCallFoo(address payable _addr) public payable {
        (bool success, bytes memory data) = _addr.call{value: msg.value, gas: 5000}(
            abi.encodeWithSignature("foo(string,uint256)", "call foo", 123)
        );

        emit Response(success, data);
    }
    function testCallDoesNotExist(address _addr) public {
        (bool success, bytes memory data) = _addr.call(
            abi.encodeWithSignature("doesNotExist()")
        );

        emit Response(success, data);
    }
}
