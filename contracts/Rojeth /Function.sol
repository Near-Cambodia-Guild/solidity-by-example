// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Function {
    // Function can returns multiple values. 
    function returnMany() public pure returns (uint, bool, uint) {
        return (1, true, 2);
    }

    // Return values can be named.
    function named() public pure returns (uint x, bool b, uint y) {
        return (3, true, 4);
    }

    // Return values can be assigned to their name. 
    // In this case the return statement can be omitted. 
    function assigned () public pure returns (uint x, bool c, uint y) {
        x = 1;
        c = true;
        y = 12;
    }

    // Use destructuring assignment when calling another
    // function that returns multiple values. 
    function destructuringAssignments() public pure returns (uint, bool, uint, uint, uint) {
        (uint i, bool b, uint j) = returnMany();

        // Value can be left out. 
        (uint x, , uint y) = (4, 5, 6);

        return (i, b, j, x, y);
    }

    // Cannot use map for either input or output

    // Can use array for input
    function arrayInput(uint[] memory _arr) public {}

    // Can use array for output
    uint[] public arr;

    function arrayOutput() public view returns (uint[] memory) {
        return arr;
    }
}

// Call function with key-value inputs
contract XYZ {
    function someFuncWithManyInput (uint x, uint y, uint z, address a, bool b, string memory c) public pure returns (uint) {}

    function callFunc() external pure returns (uint) {
        return someFuncWithManyInput(1, 2, 3, address(0), true, "C");
    }

    function callFuncWithKeyValue() external pure returns (uint) {
        return someFuncWithManyInput({a: address(0), b: true, c: "c", x: 1, y: 2, z: 3});
    }
    
}