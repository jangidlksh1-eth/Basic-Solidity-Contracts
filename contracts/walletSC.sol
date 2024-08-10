// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Wallet {
    address public owner;
    bytes32 public userNameHash;
    bytes32 public passWordHash;

    constructor(string memory _userName, string memory _passWord) {
        owner = msg.sender;
        userNameHash = keccak256(abi.encodePacked(_userName));
        passWordHash = keccak256(abi.encodePacked(_passWord));
    }

    event loginSuccess(address user);

    function login(string calldata _userName, string calldata _passWord) public {
        if(userNameHash == keccak256(abi.encodePacked(_userName)) && passWordHash == keccak256(abi.encodePacked(_passWord))) {
            owner = msg.sender;
            emit loginSuccess(msg.sender);
        }
    }
}