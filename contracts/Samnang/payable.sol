  // SPDX-License-Identifier: UNLICENSED
    pragma solidity ^0.8.9; 

    // contract Payable {
    //     address payable public owner;

    //     constructor (){
    //         owner = payable(msg.sender);
    //     }
    //     function deposit() external payable {}

    //     function getBalance () external view returns (uint){
    //         return address(this).balance;
    //     }
    // }

contract Payable {
        //Payable address can receive Ether

        address payable public owner;

        //Payable construtor can receive Ether
        constructor() payable {

            owner =payable(msg.sender);

        }
        // Function to desposit Ether into this contract.
        // Call this function along with some ether
        // The balance of this contract will be automatically updated.
        
        function deposit () public payable{}

        //Call this function along with some ether
        //ther function will throw an error since this function is not payable

        function notPayable() public{}

        //Function to withdraw all Ether from this Contract.
        function withdraw() public {
            //get the amount of the Ether stored in this contract.

            uint amout = address(this).balance;

            //Send all Ether to owner
            //Owner can receive Ether since the addresss of owner is payable

            (bool success, ) =owner.call{value: amout}("");
            require(success, "Falied to send Ether");
            
        }

        //Function to transfer Ether from this contract to address from input 

        function transfer(address payable _to, uint _amount) public {

            //Note that "to" is decleared as payable

            (bool success, ) = _to.call{ value: _amount } ("");
            require(success,"Failed to send Ether");
            
        }
 }
