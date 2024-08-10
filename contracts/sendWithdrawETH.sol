// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract sendWithdrawETH {
    uint public balanceReceived;
    
    function deposit() public payable {
        balanceReceived += msg.value;
    }

    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withDrawAll() public {
        address payable to = payable(msg.sender);
        to.transfer(getContractBalance());
    }

    function witdrawToAddress(address payable to) public {
        to.transfer(getContractBalance());
    }
}

