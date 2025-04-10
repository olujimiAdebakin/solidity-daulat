
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// while loop

// syntax

// while (conditon) {
    // statement or block of code to be executed if the condition is true

contract WhileLoop {

//    state variabe
    uint256[] data;
    uint8 k = 0;

    function loop() public returns (uint256[] memory){
        while(k < 6){
            k++;
            data.push(k);
        }

        return data;
    }

    // Note when writing your smart contract it advisable not to use loops cus of high gas fee
    
}


