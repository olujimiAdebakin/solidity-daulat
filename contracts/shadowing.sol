
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
// 

contract A {
    string public name = "Contract A";
    function getNAME() public view returns(string memory){
        return name;
    }
    
}

contract C is A {
    constructor() {
        name = "A shadowing contract" ;
    }
}

contract Example {
    string public originalname = "Olujimi"; // state variable

    function changeName() public pure returns (string memory) {
        string memory localname = "Buterin"; // shadows state variable
        return localname;
    }
}