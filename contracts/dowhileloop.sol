
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// do while loop

// syntax 

//  do {
//     block of statement to be executed
//  } while(condition)
contract DowhileLoop{

   uint256[] data;
      uint8 k = 1;

function Dohwhile() public returns (uint256[] memory){
    do{
        k++;
        data.push(k);
         } while(k < 5);
         return data;
}

}