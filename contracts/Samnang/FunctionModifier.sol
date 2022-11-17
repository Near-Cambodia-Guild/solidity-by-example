// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// //Function modifier _ reuse code before and / or after function 
// //Basic, inputs, sandwich 

// contract FunctionModifier{
//     bool public paused;
//     uint public count;

//     function setPause(bool _paused) external{
//         paused = _paused;
//     }

//     modifier whenNotPaused(){
//         require(!paused,"paused"); 
//     }

//     function inc() external whenNotPaused{
//         count += 1;
//     }
//     function dec () external whenNotPaused{
//         count -= 1;
//     }
//     modifier cap(uint _x){
//         require(_x < 100,"x >= 100");
        
//     }

//     function incBy(uint _x) external whenNotPaused cap(_x){
//         count += _x;
//     }

//     modifier sandwich (){
//         count +=10;
//         count *= 2;
//     }

//     function foo() external sandwich{
//         count += 1;
//     }

// }