//  SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Primitves {
    bool public boo = true;

    uint8 public u8 = 1;
    uint public u256 = 456;
    uint public u = 123;

    int8 public i8 = -1;
    int public i256 = 456;
    int i = -123;

    int public minInt = type(int).min;
    int public maxTx = type(int).max;

    address public addr = 0x698013BbA6BD97393b2291910b41Ac24736A2F0B ;

    bytes1 a = 0xb5;
    bytes1 b = 0x56;
    
    bool public defaultBoo;
    uint public defaultUint;
    int public defaultInt;
    address public defaultAddr;

}