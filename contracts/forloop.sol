
// SPDX-License-Identifier: MIT


pragma solidity ^0.8.18;

contract Forloop{

    // syntax

    // for (condition; test condition; iteration statement){
        // statement or block of statement to be executed in each iteration if condition is met
// }

  uint256[] data;

   function forLoop() public returns(uint256[] memory){
    for (uint256 i = 0; i < 3; i++) {
            data.push(i);
        }
        return data;
   }



}