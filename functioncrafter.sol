// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Calculator {
    function add(uint256 _a, uint256 _b) public pure returns (uint256) {
        return _a + _b;
    }
    
    function subtract(uint256 _a, uint256 _b) public pure returns (uint256) {
        require(_b <= _a, "Subtraction result would be negative");
        return _a - _b;
    }
    
    function multiply(uint256 _a, uint256 _b) external pure returns (uint256) {
        return _a * _b;
    }
    
    function divide(uint256 _a, uint256 _b) external pure returns (uint256) {
        require(_b > 0, "Division by zero");
        return _a / _b;
    }
}
