
// SPDX-License-Identifier: MIT


pragma solidity ^0.8.18;

contract StateVariables{

    // FEW THINGS TO KEEP IN MIND
    // STATE VARIABLES
    // HAS TO ALWAYS BE AT THE TOP

    string public myState;
    uint256 public myNum;

    string public defaultName = "Olujimi";
    uint256 public defaultAge = 18;

    bytes public defaultByte = "hey wassup"; //will be converted to byte 0x68657920776173737570
    bytes public defaultByteNo; // by default it is this 0x
    
    // array
    uint256[5] public myNumber;

    // constructor

    constructor(string memory _name, uint _no){
        myState = _name;
        myNum = _no;
    }

    // function using function to update my variable

    function update(string memory _name, uint _no) public{
        myState = _name;
        myNum = _no;
    }
}