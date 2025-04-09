// SPDX-License-Identifier: MIT


pragma solidity ^0.8.18;

contract MyFirstContract{
    // string public hey = "Olujimi dev";
    // uint256 public age = 30;

    string public hey;
    uint256 public age;

// updating variable using constructor
    // constructor(string memory _name,uint _age){
    //     hey = _name;
    //     age = _age;
    // }

// updating variable using function
    function addInfo(string memory song, uint256 count)  public {
        hey = song;
        age = count;
    }
}

