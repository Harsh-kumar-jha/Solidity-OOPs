/*

-> Abstract contracts are the contract that can have functions without its implementation.
-> To make a contract abstract we have to use "abstract" keyword.
-> Function without implementation must contain "virtual" keyword.

-> The Abstract contract defines the structure of the contract any derived contract
inherited from it should provide an implementation for the incomplete functions. And 
that function should contain "override" keyword.

-> And if the derived contract is also not implementing the incomplete functions then that 
derived contract will also be "marked as abstract". 

-> Contract marked as abstract contract cannot be deployed.

*/




// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

abstract contract Parent {
    string public str;
    address public manager;

    constructor(){
        str = "Hello World";
        manager = msg.sender;
    }
   
    function add(uint a, uint b) pure public virtual returns(uint);

    function sub(uint a , uint b) pure public returns(uint){
        return a-b;
    }
}

contract Child is Parent {
    function add(uint a , uint b) pure public override returns(uint){
        return a+b;
    }
}