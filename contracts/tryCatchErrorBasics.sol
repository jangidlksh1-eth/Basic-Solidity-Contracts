// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract willThrowError {
    error NotAllowedError(string);
    function aFunction() public pure {
        // require(false, "Error Message, Process Aborted");
        // assert(false);
        revert NotAllowedError("You aren't allowed, Error Please!");
    }
}

contract tryCatchError {
    event ErrorLogging(string reason);
    event ErrorLogCode(uint errorCode);
    event ErrorLogBytes(bytes lowLevelData);
    function catchTheError() public {
        willThrowError will = new willThrowError();
        try will.aFunction() {
            // add extra code
        } catch Error(string memory reason) { // that'll catch out the error for the require keyword / function
           emit ErrorLogging(reason);
        } catch Panic(uint errorCode) {
            emit ErrorLogCode(errorCode);
        } catch(bytes memory lowLevelData) {
            emit ErrorLogBytes(lowLevelData);
        }
    }
}