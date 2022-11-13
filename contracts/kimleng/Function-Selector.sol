// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/*
"transfer(address,uint256)"
0xa9059cbb
"transferFrom(address,address,uint256)"
0x23b872dd
*/

contract FunctionSelector {
    function getSelector(string calldata _func) external pure returns (bytes4) {
        return bytes4(keccak256(bytes(_func)));
    }
}
