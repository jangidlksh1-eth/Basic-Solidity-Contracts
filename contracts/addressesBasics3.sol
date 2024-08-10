// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract addresses {
    address public addressMM;

    function setAddressMM(address _addressMM) public {
        addressMM = _addressMM;
    }

    function getBalance() public view returns(uint) {
        return addressMM.balance;
    }
    // function getCode() public view returns(byte) {
    //     return addressMM.code;
    // }
    // function getCodeHash() public view returns(uint) {
    //     return addressMM.hash;
    // }
    // function gettransfer() public view returns(uint) {
    //     return addressMM.transfer();
    // }
    // function getSend() public view returns(uint) {
    //     return addressMM.send();
    // }
}