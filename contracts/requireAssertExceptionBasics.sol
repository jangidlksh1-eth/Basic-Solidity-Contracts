// SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

contract wallet {
    mapping (address => uint8) public balanceReceived;

    function depositBalance() public payable {
        assert(msg.value == uint8(msg.value));
        balanceReceived[msg.sender] += uint8(msg.value);

    }

    function witdrawEth(address payable _to, uint8 _amount) public {
        require(_amount <= balanceReceived[msg.sender], "Not Enough Funds, Aborting the Transaction!");
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
}
