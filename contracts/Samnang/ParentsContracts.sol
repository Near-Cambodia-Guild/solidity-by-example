// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9; 
    /* Inheritance tree
   A
 /  \
B   C
 \ /
  D
*/

contract E {
    event Log(string message);

    function foo() public virtual {
        emit Log("E.foo");
    }

    function bar() public virtual {
        emit Log("E.bar");
    }
}

contract F is E {
    function foo () public virtual override {
        emit Log("F.foo");
    }

    function bar () public virtual override {
        emit Log("F.bar");
    }
}