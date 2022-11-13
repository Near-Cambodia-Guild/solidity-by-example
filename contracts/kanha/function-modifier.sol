// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

    contract FunctionModifier {

        address public owner;
        uint public x=10;
        bool public locked;

    constructor() {

            owner = msg.sender;

        }
    modifier onlyOwner(){
            require (msg.sender==owner,"Not ower");
            _;
        }
    modifier validAddress(address _addr){
        require(_addr !=address(0),"Not valid Address");
        _;

        }    
    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner){
        owner = _newOwner;

    }
    modifier biggerThan0(uint y){
        require(y>0,"Not bigger than x");
        _;

    }
    modifier increaseXbyY(uint y){
        _;
        x=x+y;
    }
    function increaseX(uint y)public onlyOwner biggerThan0(y)increaseXbyY(y){

    }
    modifier noReentrancy(){

        require(!locked,"Not noReetrancy");

        locked = true;
        _;

        locked = false;

    }
    function decrement(uint i)public noReentrancy{
        x -=i;

        if (i>1) {

            decrement(x = i-1);

        }

    }

    }



