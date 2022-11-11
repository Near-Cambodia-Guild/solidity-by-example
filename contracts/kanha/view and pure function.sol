
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract viewAndPure {
    
    uint x = 1;
      // Promise not to modify the state.
    function addTox(uint y)public view returns(uint) {
        return x + y;
    }
// Promise not to modify or read from the state.
    function min(uint i, uint j) public pure returns(uint) {
        return i-j;
    }

    function mul(uint n, uint m) public pure returns (uint) { 
        return n * m;
     }
 
    
}
