// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract myArray{

    uint [] public uintArray= [1,2,3,4];
    string [] public stringArray=['cat','dog','apple'];
    string [] values;

    uint[][] public uintArray2D=[[1,2,3,4],[5,6,7,8]];

    function addCount()public view returns(uint){

            return values.length;

    } 

    function addValues(string memory _values)public {

        values.push(_values);


    }


}

    contract ArrayRemoveBYshifting{
        uint []public arr;

        //[1,2,3,4]--remove(1)-->[1,3,4,4] if you don't let it to show the shift use arr.pop-->[1,3,4]
        //[1,2,3,4,5,6]--remove(2)-->[1,2,4,5,6,6]use arr.pop[1,2,4,5,6]

        function remove (uint _index)public{

            require (_index <arr.length, "indez out of bound");

            for (uint i=_index;i< arr.length - 1;i++){

                arr[i]= arr[i+ 1];
            }
                arr.pop();
        }
        function test()external{
        
        arr=[1,2,3,4,5];

        remove(1);

        //[1,3,4,5]

        assert(arr[0]==1);
        assert(arr[1]==3);
        assert(arr[2]==4);
        assert(arr[3]==5);

        arr=[1];

        remove (0);

        //[]
        assert(arr.length==0);
        
        }

        
    }

