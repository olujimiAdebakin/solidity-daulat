
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Base{
   
// public	Everywhere	Can be accessed externally and internally.
// external	Only externally	Meant to be called outside the contract. Cheaper than public when used externally.
// internal	Inside the contract and derived contracts Not accessible from outside.
// private	Only in the contract where it's defined	Not even child contracts can access.

function privateFunc() private pure returns (string memory){
    return "private function called";
}

function testPrivateFunc() public pure returns (string memory){
    return privateFunc();
}

// INTERNAL FUNCTION CAN BE CALLED
// -inside this contract
// -inside contracts that inherit this contract

function internalFunc() internal pure returns (string memory){
    return "Internal function called";
}

function testInternalFunc() public pure virtual returns (string memory){
    return internalFunc();
}


// PUBLIC FUNCTIONSCAN BE CALLED
// - inside the contract
// - inside contracts that inherit this contrcat
// - by other contracts and accounts

function publicFunc() public pure returns (string memory){
    return "Public function called";
}

// EXTERNAL FUNCTIONS CAN ONLY BE CALLED
// - BY OTHER CONTRACTS AND ACCOUNTS
function externalFunc() external pure returns (string memory){
    return "External function called";
}

// THIS CONTRACT WILL NOT COMPILE SINCE WE ARE TYRING TO CALL AN EXTERNAL FUNCTION HERE 
// function testExternalFunc() public pure returns (string memory) {
// }return externalFunc();

// state variables
string private privateVar = "my private variable";
string internal internalVar = "My internal variable";
string public publicVar = "my public variable";

// state variables cannot be external so this code wont compile
// string external externalVar = "my external variable";

}

contract Child is Base {
    // inheritance contracts do not have access to private functions and state variables.
    // function testPrivateFunc() public pure returns (string memory) {
        // return privateFunc();
// }

// internal function call can be called inside child contrcats
function testInternalFunc() public pure override returns (string memory){
    return internalFunc();
}
}