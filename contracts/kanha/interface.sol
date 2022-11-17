// SPDX-License-Identifier: MIT
pragma solidity^0.8.13;

contract Counter {
    uint public count;
    function increment()external {
        count +=1; 
    }
}

interface ICount {
    function count() external view returns(uint);
    function increment() external;
    
}
contract Mycontract {
    function incrementCounter(address _counter)external {
        ICount(_counter).increment();

    }
    function getCount(address _counter)external view returns(uint) {
        return ICount(_counter).count();
    }
}