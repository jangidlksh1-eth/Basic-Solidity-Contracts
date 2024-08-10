// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract contractBasic {
    uint256 public myUint256;
    function getMyUint256(uint256 _myUint256) public {
        myUint256 = _myUint256;
    }

    function updateMyUint256() public {
        myUint256++;
    }

    uint8 public myUint8 = 2**7;
    // function getMyUint8(uint8 _myUint8) public {
    //     myUint8 = _myUint8;
    // }

    function updateMyUint8() public {
        unchecked {
        myUint8++;
        }
    }

    int public myInt;
    function getMyInt(int _myInt) public {
        myInt = _myInt;
    }

    function updateMyInt() public {
        myInt++;
    }
}