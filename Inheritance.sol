/*

-> Inheritance in solidity is the procedure in which one contract inherits 
the attributes & methods of another contract.

*/




// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract car {
    uint public speed;
    uint public breaks;
    uint public length;
    uint public breath;
    uint public accelator;
}

contract sportCar is car{
    function topGear() pure public returns(uint){
        return 5;
    }
}