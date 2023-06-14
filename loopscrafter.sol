// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ForAndWhileLoops {
    uint public i = 0;

    function loops() external {
        uint a;
        
        for (uint j = 0; j < 10; j++) {
            if (j == 3) {
                continue;
            } else if (j == 5) {
                break;
            }
            
            a++;
        }
        
        while (true) {
            if (a == 100) {
                break;
            }
            
            a++;
        }
        
        i = a;
    }
}
