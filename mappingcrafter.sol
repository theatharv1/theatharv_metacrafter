// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Mapping {
    mapping(address => uint) public accBalance;
    mapping(address => mapping(address => bool)) public isFriend;

    function operations() external {
        accBalance[msg.sender] = 1234;
        uint bal1 = accBalance[msg.sender];
        uint bal2 = accBalance[address(1)];

        accBalance[msg.sender] += 8765;
        delete accBalance[msg.sender];
        delete bal1;
        delete bal2;

        isFriend[msg.sender][address(this)] = true;
    }
}
