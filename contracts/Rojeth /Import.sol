// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

struct Point {
    uint x;
    uint y;
}

error Unauthorized (address caller);

function add(uint x, uint y) pure returns (uint) {
    return x + y;
}

contract Foo {
    string public name = "Foo";
}

    /*
    pragma solidity ^0.8.13;

    // Import Foo.sol from current directory
    import "./Foo.sol";

    // Import {symbol1 as alias, symbol2} from "filename";
    import {Unauthorized, add as func, point} from "./Foo.sol";

    Contract Import {
        // Initialize Foo.sol
        Foo public foo = new Foo();

        // Test Foo.sol by getting it's name. 
        function getFooName() public view returns (string memory) {
            return foo.name();
        }
    }
    */