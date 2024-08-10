// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ContractOne {

    mapping(address => uint) public acccoutBalance;

    function deposit() public payable {
        acccoutBalance[msg.sender]  += msg.value;
    }

    receive() external payable { 
        deposit();
    }
}

contract conctractTwo {
    receive() external payable { }
    
    function depositToContractOne(address _contractOne) public {
        // bytes memory payload = abi.encodeWithSignature("deposit()");
        (bool success, ) = _contractOne.call{value : 10, gas : 100000}("");
        require(success);
    }
} 