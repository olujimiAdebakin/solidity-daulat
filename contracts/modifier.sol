
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// FUNCTION MODIFIER

// IMPORTANT NOTES
// ---MODIFIER ARE CODE THAT CAN BE RUN BEFORE AND AFTER THE FUNCTION CALL
// ---GENERALLY USED FOR 3 REASON
// ---RESTRICT ACCESS, VALIDATE INPUTS, GUARD AGAINST REANTRACY ATTACKS

contract functionModifier{

    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor(){

        owner = msg.sender;
    }

    // modifier

    modifier onlyOwner(){
        require(msg.sender == owner, "You are not the owner!");
        _;
    }

    modifier valiDateData(address _addr){
        require(_addr != address(0), "Not the owners address!");
        _;
    }

    function changeOwner(address _newOwner ) public onlyOwner valiDateData(_newOwner){
        owner = _newOwner;

    }

    modifier noReentracy(){
        require(!locked, "No Reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint256 i) public noReentracy {
        x -= 1;

        if(i > 1){
            decrement(i - 1);
        }
    }
}