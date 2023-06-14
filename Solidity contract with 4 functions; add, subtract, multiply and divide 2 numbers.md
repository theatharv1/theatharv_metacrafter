//SPDX-license-identifier :MIT

pragma solidity ^0.6.0;

contract Math {
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
    function subtract(uint256 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }
    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }
    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        return a / b;
    }
}
