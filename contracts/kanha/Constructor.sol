// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract B {

    string public name;

   constructor(string memory _name) {
    name = _name;

   }
}

contract A {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

contract D is B("b"),A("a"){}

contract C is B , A { 

    constructor(string memory _name , string memory _text ) B(_name) A(_text) {}
}
