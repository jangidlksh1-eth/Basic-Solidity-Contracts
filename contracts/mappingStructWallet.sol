// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract structWallet {
    
    struct Transaction {
        uint amount;
        uint timeStamp;
    }

    struct Balance {
        uint totalBalance;
        uint numOfDeposits;
        mapping (uint => Transaction) deposits;
        uint numOfWithdraws;
        mapping (uint => Transaction) withdrawls;
    }


    
    mapping(address => Balance) public balances;

    function getDepositNum(address _from, uint _numDeposit) public view returns(Transaction memory) {
        return balances[_from].deposits[_numDeposit];
    }

    function depositETH() public payable {
        balances[msg.sender].totalBalance += msg.value;

        Transaction memory deposit = Transaction(msg.value, block.timestamp);
        balances[msg.sender].deposits[balances[msg.sender].numOfDeposits] = deposit;
        balances[msg.sender].numOfDeposits++;

    }

    function withdrawETH(address payable _to, uint _amount) public {
        balances[msg.sender].totalBalance -= _amount;

        Transaction memory withdraw = Transaction(_amount, block.timestamp);
        balances[msg.sender].withdrawls[balances[msg.sender].numOfWithdraws] = withdraw;
        balances[msg.sender].numOfWithdraws++;

        _to.transfer(_amount);

    }
}