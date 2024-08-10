// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract constructorBasics {
    uint public a;
    uint public b;

    constructor(uint x, uint y) {
        a = x;
        b = y;
    }

    function productSum() public view returns(uint product, uint sum) {
        product = a * b;
        sum = a + b;
    }
    
}