/*

-> Solidity contracts are like a class in any other object-oriented programming language.
-> A class is a description of an object's property and behaviours.
-> Object is a real world entity.

*Note*:- Constructor of contract is called as soon as its object is created.

*/

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Book {
    uint length;
    uint breath;
    uint height;

    function setDimension(uint _length,uint _breath,uint _height) public{
        length = _length;
        breath = _breath;
        height = _height;
    }

    function getDimension() public view returns(uint,uint,uint){
        return (length,breath,height);
    }
}

contract Demo {
    Book obj = new Book();

    function returnBookOject() public view returns(Book){
        return obj;
    }

    function readBookDimension() public view returns(uint,uint,uint){
        return obj.getDimension();
    }

    function writeBookDimension(uint length,uint breath,uint height) public {
        obj.setDimension(length,breath,height);
    }
}


