// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Functionselector {
    function getSelector(string calldata _func)external pure returns(bytes4) {
         return bytes4(keccak256(bytes(_func)));

    }
    
}

// contract Receiver {

//     event log(bytes4 data);
//        function transferData(address _to , uint _amount)external {
//     emit log(msg.data);
        
//     }
// }