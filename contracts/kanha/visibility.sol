// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;


contract visibilityBase {
    uint private x = 0;
    uint internal y = 2;
    uint public z = 8;

    function privateFunc()private pure returns(string memory) {
        return "privateFunc";

    }
    function internalFunc()internal pure returns(string memory) {
        return "internalFunc";

    }
    function publicFunc()public pure returns(string memory) {
        return "publicFunc";
    }
    function externalFunc()external view returns(string memory) {
       
    }
}

contract visibilitychild is visibilityBase { 
    function example()external view{
        y + z;
        publicFunc();
        internalFunc();
        
    }
}
