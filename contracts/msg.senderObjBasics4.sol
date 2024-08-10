// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract addresses {
    address public addressMM;

    function getAddressMM() public {
        addressMM = msg.sender;
    }
}