// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// contract HelloTech {
//     string public greet = "Hello Tech!";
    
// }
// contract Counter {
//     uint public count;

//     // Function to get the current count
//     function get() public view returns (uint) {
//         return count;
//     }

//     // Function to increment count by 1
//     function inc() public {
//         count += 1;
//     }

//     // Function to decrement count by 1
//     function dec() public {
//         // This function will fail if count = 0
//         count -= 1;
//     }
// }

// contract Variables {
//     // State variables are stored on the blockchain.
//     string public text = "Hello";
//     uint public num = 123;

//     function doSomething() public {
//         // Local variables are not saved to the blockchain.
//         uint i = 456;

//         // Here are some global variables
//         uint timestamp = block.timestamp; // Current block timestamp
//         address sender = msg.sender; // address of the caller
//     }
// }

// contract Constants {
//     // coding convention to uppercase constant variables
//     address public constant MY_ADDRESS = 0x2381776d931953e142e51620944bDA170eD9C846;
//     uint public constant MY_UINT = 1234;
// }

// contract SimpleStorage {
//     // State variable to store a number
//     uint public num;

//     // You need to send a transaction to write to a state variable.
//     function set(uint _num) public {
//         num = _num;
//     }

//     // You can read from a state variable without sending a transaction.
//     function get() public view returns (uint) {
//         return num;
//     }
// }

// contract FunctionIntro {
//     function add (uint x , uint y) external pure returns(uint){
//         return x + y;
//     }
//     function sub (uint x , uint y) external pure returns(uint){
//         return x -y ;
//     }
// }
// contract IfElse{
//     function example(uint _x) external pure returns (uint){
//        if(_x < 10) {
//            return 1;
//        } else if( _x < 20){
//            return 2;
//        } else{
//            return 3;
//        }
//     }
//     function ternary(uint _x) external pure returns (uint){
//         // if(_x<10){
//         //     return 1;
//         // }
//         // return 2;

//         return _x < 10 ? 1 : 2;
//     }
// }

// contract ForAndWhileLoops {
//     function loops() external pure {
//         for (uint i =0 ; i < 10; i++){
//             if(i == 3 ){
//                 continue;
//             }
//             //more code 
//             if ( i == 5){
//                 break;
//             }
//         }
//         uint j =0;
//         while (j < 10 ){
//             j++;
//         }

//     }
//     function sum(uint _n) external pure returns (uint){
//         uint s;
//         for (uint i = 1 ; i <= _n; i++){
//             s += i;
//         }
//         return s;
//     }
// }

// contract Array {
//     uint[] public nums =[1,2,3];
//     uint[3] public numsFixed = [4,5,6];

//     function examples() external {
//         nums.push(4); //[1,2,3,4]

//         uint x = nums[1];

//         nums [2] = 777;

//         delete nums[1];

//         nums.pop();
//         uint len = nums.length;

//         //create array in Memory
//         uint[] memory a = new uint[](5);
//         a[1] =123;
//     }

//     function returnArray() external view returns (uint[] memory){
//         return nums;
//     }
// }
// contract Mapping {
//     mapping(address => uint)public balances;
//     mapping(address => mapping(address => bool)) public isFriend;

//     function examples() external {
//         balances[msg.sender] =123;
//         uint bal = balances[msg.sender];
//         uint bal2 = balances[address(1)];

//         balances[msg.sender] +=456;

//         delete balances[msg.sender];

//         isFriend[msg.sender][address(this)] = true;
//     }
// }


contract Mapping {
    // Mapping from address to uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // Update the value at this address
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // Reset the value to the default value.
        delete myMap[_addr];
    }
}

contract NestedMapping {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
        return nested[_addr1][_i];
    }

    function set(
        address _addr1,
        uint _i,
        bool _boo
    ) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
}
