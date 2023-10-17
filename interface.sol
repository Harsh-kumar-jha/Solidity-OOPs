/*

-> An interface is an agreement or a contract b/w itself and any contract that implement it.

# Interface Restriction :-
       1. They can only inherit from other interfaces only but not from other contracts
       2. They can not declare state variables
       3. They can not declare constructor
       4. Functions can be declared but not implemented. All declared functions must be external

*/

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

interface Calc{
    function add(uint a, uint b) external returns(uint);
    function sub(uint a, uint b) external returns(uint);
    function multi(uint a, uint b) external returns(uint);
    function div(uint a, uint b) external returns(uint);
}

contract BasicCalc is Calc {
    function add(uint a, uint b) pure external returns(uint){
      return a+b;
    }
    function sub(uint a, uint b) pure external returns(uint){
       return a-b;
    }
    function multi(uint a, uint b) pure external returns(uint){
       return a*b;
    }
    function div(uint a, uint b) pure external returns(uint){
        return a/b;
    }
}