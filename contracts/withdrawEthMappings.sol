// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract withDrawMaps {
    mapping(address => uint) public balanceReceived;

    function sendEth() public payable {
        balanceReceived[msg.sender] += msg.value;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance; 
    }

    function outAllEth(address payable to) public {
        uint balanceOut = balanceReceived[msg.sender];
        balanceReceived[msg.sender] = 0;
        to.transfer(balanceOut);
    }
}