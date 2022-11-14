// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A {
    function foo() public pure virtual returns(string memory){
        return "A";
    }

    function bar() public pure returns(string memory){

        return "A";
    }
    function baz () public pure virtual returns(string memory){
        return "A";
    }
}

contract B is A {
    function foo () public pure virtual override  returns(string memory){
         
         return "B";
    }

    function baz () public pure virtual override returns(string memory){
        return "B";

    } 

}

contract C is B {
    function foo ()public pure virtual override returns(string memory){
        return "C";
    }

}

contract D is B, C {
    // D.foo() returns "C"
    // since C is the right most parent contract with function foo()
    function foo() public pure override(B, C) returns (string memory) {
        return super.foo();
    }
}



contract F {
    function foo ()public pure virtual returns(string memory){
        return "F";
    }

    function bac()public pure returns(string memory){
        return "F";
    }
}

contract E is F {
    function foo()public pure virtual override returns(string memory){
        return "E" ;
    }

}

contract G is E {
    function foo () public pure override returns(string memory){
        return "G";
    }
    function mul () public pure returns(string memory){
        return "H";
    }
}

