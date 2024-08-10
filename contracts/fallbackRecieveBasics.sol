// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract callFun {
    uint public lastValueSent;
    string public lastFunctionCalled;   
    
    uint public myUint;

    function setMyUint(uint _aNewInt) public {
        myUint = _aNewInt;
    }

    

    receive() external payable { 
        lastValueSent = msg.value;
        lastFunctionCalled = "recieve";
    }

    fallback() external payable { 
        lastValueSent = msg.value;
        lastFunctionCalled = "Fallback";
    }


    
}