// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Modifier {
    address public owner = msg.sender;
    string internal secretPassword = "123456789";
    uint public timesBeingCalled = 0;

    modifier isOwner() {
        require(msg.sender == owner, "Access Denied, only owner can access");
        _;
    }

    modifier callLimit(uint _callNumber) {
        require(_callNumber < 5, "Password Check Limit Exceeded");
        _;
    }

    function checkPassword() public view isOwner callLimit(timesBeingCalled) returns (string memory) {
        timesBeingCalled++;
        return secretPassword;
    }
}
