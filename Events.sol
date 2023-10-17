/*

-> Events are inheritable members of contracts.
-> When  we call them , they cause the argument, to be stored in the 
transactions log special data structure in the blockchain
-> These logs are associated with the address of the contract , are 
incorporated into the blockchain and stay there as long as a block
is accessible.
-> the log and its event data is not accessible from within contracts
(not even from the contact that created them.)

Q.Where events get Stored?
-> Log files

Advantage of Events 
      1. User get notify
      2. Owner of this get notify
      3. low cost storage.

*/


// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Ecommerce {
    event buying(address buyer, uint amount);

    function pay() public payable {
        emit buying(msg.sender,msg.value);
    }
}