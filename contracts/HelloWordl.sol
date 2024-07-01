//SPDX-Identifier: UNLICENSED
 pragma solidity ^0.8.4;

 contract HelloWorld {
    event messagechenged(string oldmsg, string newmsg);
    string public message;
    
    constructor(string memory firstmessage) {
        message = firstmessage;
    }
    function update(string memory newmessage)public {
         string memory oldmsg = message;
         message = newmessage;
          emit messagechenged(oldmsg, newmessage);
    }

 }