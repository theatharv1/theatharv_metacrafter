// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionLab {
    uint public a;
    uint public b;
    address public k;

    constructor(uint _a, uint _b) {
        a = _a;
        b = _b;
    }

    function sumFunc() private view returns (uint) {
        return a + b;
    }

    function calc() internal view returns (uint) {
        uint d = sumFunc();
        return d;
    }

    function payableFunc() public payable returns (uint) {
        uint amount = msg.value;
        return amount;
    }
}
