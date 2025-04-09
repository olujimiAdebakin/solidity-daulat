

// SPDX-License-Identifier: MIT


pragma solidity ^0.8.18;

// LOCAL VARIABLE

contract LocalVariable{

    uint256 public myNumber;
    
    // FUNCTIONS FOR LOCAL VARIABLE
function local() public returns(address, uint256, uint256){
        // VARIABLES DECLARED INSIDE THE FUNCTION SCOPE ARE LOCAL VARIABLE
        // THEY CAN ONLY BE EXECUTED WHEN THE FUNCTION IS CALLED 
        // THEY ARE NOT STORED ON THE CHAIN STORED ON THE MEMORY

        uint256 i = 345;
        myNumber = i;

        i += 50;
        address myAddress = address(1);
        return (myAddress, myNumber, i);
    }

}