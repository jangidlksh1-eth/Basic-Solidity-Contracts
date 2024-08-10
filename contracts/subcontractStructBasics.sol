// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Wallet {
    payReceived public payment;

    function payContract() public payable {
        payment = new payReceived(msg.sender, msg.value);
    }
}

contract payReceived {
    address public from;
    uint public amount;

    constructor(address _from, uint _amount) {
        from = _from;
        amount = _amount;
    }
}

contract wallet2 {
    struct paymentReceiveStruct {
        address from;
        uint amount;
    }

    paymentReceiveStruct public payment;
    function payContract() public payable {
        payment = paymentReceiveStruct(msg.sender, msg.value);
    }
}