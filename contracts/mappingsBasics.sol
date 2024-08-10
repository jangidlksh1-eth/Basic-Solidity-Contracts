    // SPDX-License-Identifier: MIT
    pragma solidity 0.8.26;

    contract NumPositions {
        mapping (uint => string) public getPositions;

        function findPosName(uint _PosNum) public {
            if(_PosNum == 69) {
                getPositions[_PosNum] = "Mutual Umbrella Oral!";
            } else if (_PosNum == 99) {
                getPositions[_PosNum] = "Standing Spooning";
            } else if(_PosNum == 71) {
                getPositions[_PosNum] = "D-Style";
            }
        }
    }