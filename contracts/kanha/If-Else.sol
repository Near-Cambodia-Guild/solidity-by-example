// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract IfElse {

    function foo(uint x)public pure returns( uint ){

        if (x<10){

            return 0; 
        }else if (x<20 ){

            return 1;
        }
        else{

            return 2 ;
        }
    } 


function ternary (uint _x)public pure returns (uint){
 
    return _x < 10? 1:2;
}
}

pragma solidity < 0.9.0 ;

contract myCon {


    uint guess = 6 ; 

function guessNUmber(uint x)public view returns(string memory){
 
 if (x > guess){

    return "Greater than ";

    }else if (x < guess ){

    return "less than ";

}else if (x==guess ){
    return "your win ";

}
else {
    return "wrong..";
}

}

}
