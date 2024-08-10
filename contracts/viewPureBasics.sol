// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract basicViewPure {
    uint value1 = 54;
    uint value2 = 65;

    function productSum() public view returns(uint sum, uint product) {
        product = value1 * value2;
        sum = value1 + value2;

    }

    function pureSum() public pure returns(uint sum, uint product) {
        uint a = 1;
        uint b = 3; 

        product = a * b;
        sum = a + b;
    }

}