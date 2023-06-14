// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Arrays {
  uint[] public dynamicArr = [1, 3, 5]; // No fixed length
  uint[3] public fixedArr = [2, 4, 6];  // Has fixed length

  uint public len;
  
  function operations() external {
    dynamicArr.push(9);    // Adds value to the end: 1, 3, 5, 9
    dynamicArr[3] = 7;    // Accessing via index and changing: 1, 3, 5, 7
    delete dynamicArr[3];  // 1, 3, 5, 0 (7 changes to 0)
    dynamicArr.pop();      // 1, 3, 5

    // Creating a new array in memory
    uint[] memory newArray = new uint[](5); // Must be a statically-sized (fixed) array
      
    len = newArray.length;
  }

  // Returning the dynamic array
  function getDynamicArray() external view returns (uint[] memory) { 
    return dynamicArr;
  }
}
