
// SPDX-License-Identifier: MIT


pragma solidity ^0.8.18;

contract View{

    uint256 Num1 = 2;
    uint256 Num2 = 4;
    // USING THE VIEW KEYWORD TO CHECK THE STATE VARIABLE
    function getResults() public view returns(uint256, uint256){
        return(Num1, Num2);
    }

    // WHAT IF I WANT TO CALCULATE
       function calculateResults() public view returns(uint256 product, uint256 total){
        // uint256 num1 = 30;
        // uint256 num2 = 40;
         
        product = Num1 * Num2;
        total = Num1 + Num2;
        
    }
}