// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract contractBasic {
    string public userName = "Jangidlksh1";
    bytes public userBytes = unicode"Jangidlksh1";
    string public passWord = "Raja@123";
    bytes public passBytes = unicode"Raja@123";

    function getDetails(string memory _userName, string memory _passWord) public {
        userName = _userName;
        passWord = _passWord;
    }

    function verifyProfile(string memory _userName, string memory _passWord) public view returns(bool) {
        return keccak256(abi.encodePacked(userName, passWord)) == keccak256(abi.encodePacked(_userName, _passWord));
    }

    function getByteLength() public view returns(uint) {
        return userBytes.length;
    }

    function getByteLength2() public view returns(uint) {
        return passBytes.length;
    }
}