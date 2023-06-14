// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
 /* Access Modifiers in function:-
public: These functions can be accessed from anywhere, both within and outside of the contract.
private: these functions can only be used within the contract and are not accessible from outside.
internal: these functions can be used as functions within other functions, similar to recursion.
external: these functions cannot be used recursively or inside other functions.
View functions: these functions ensure that state variables are not modified but can be read.

Pure functions: these functions neither read nor write to state variables. They only take parameters and return outputs.

Payable functions: these special functions are capable of sending and receiving native blockchain tokens.



    */

contract FunctionTypes {
    uint public a = 213; 
    
    function publicFunc() public {
        // Code
        a += 120;
    }

    function recursive(uint n) internal {
        // Code
        a += 100;
        n--;
        if (n > 1) recursive(n);
    }

    function nonRecursive() external {
        // Code
        a += 123;
        recursive(5);
        // nonRecursive(); - Not visible, will cause an error
    }

    function privateFunc() private {
        // Code
        a += 111;
        recursive(2);
        // nonRecursive(); - Error
    }

    function readStateOnly() private view returns(uint) {
        uint b = a;
        return b;
    }

    function pureFunc(string memory apneKaamSeKaam) public pure returns(string memory) {
        return apneKaamSeKaam;
    }
}
