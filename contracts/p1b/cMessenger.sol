// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract chainger{
    uint public changeOwner;

    address public owner;
    
    string public message;

    constructor() {
        owner = msg.sender;
    }

    function takeOff(string memory _message) public {
        if(owner == msg.sender) {
            message = _message;
            changeOwner++;
        }

    }
}