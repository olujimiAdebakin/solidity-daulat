
// SPDX-License-Identifier: MIT


pragma solidity ^0.8.18;

contract CondiionalStatement{

    uint256 public myNum = 5;
    string public myString;

    function getTheValueOfNum(uint _num) public returns (string memory){
        if(_num == 5){
            myString = "you met the requirement";     
        }else if (_num == 4){
            myString = "Requirement not met";
        }else{
            myString = "get the fuck";
        }

        return myString;
    }


    // shorthand Ternary Operator

    function shortHand(uint _num) public returns (string memory){
        return _num == 5 ? myString = "How Old are you" : myString = "Who the fuck are you";
    }

}