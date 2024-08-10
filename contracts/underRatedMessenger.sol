// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract underRatedMessenger {
    address public owner;
    uint public changeCounter;
    string public theMessage;

    constructor() {
        owner = msg.sender;
    }

    function getMessage(string memory _newMessage) public payable {
        if(msg.sender == owner && msg.value == 1 ether) {
            theMessage = _newMessage;
            changeCounter++;
        } else {
            payable(msg.sender).transfer(msg.value);
        }
    }
}