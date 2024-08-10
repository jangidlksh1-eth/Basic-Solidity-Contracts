// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract sender {
    receive() external payable { }

    function withdrawTransfer (address payable _to) public {
            _to.transfer(10);
    }

    function withdrawSend(address payable _to) public {
            bool isTrue = _to.send(10);

            require(isTrue, "Sending Funds is Unsuccessful, Please Try Later");
    }
}

contract receiverNoAction {
    function balance() public view returns(uint) {
        return address(this).balance;
    }

    receive() external payable { }
}

contract receiverAction {
    uint public balanceCredit;
    receive() external payable { 
        balanceCredit += msg.value;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }
}