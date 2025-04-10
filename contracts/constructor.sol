

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// /constructor

contract X {
    string public name;

    constructor(string memory _name){
        name = _name;
    }


}


contract Y {
    string public text;

    constructor(string memory _text){
        text = _text;
    }
}

// There are two ways to initialize parent contract with parameters

// pass the parameters here in the inheritance list
contract B is X("Input to X"), Y("Input to Y"){

}

contract  C is X, Y {
    constructor(string memory _name, string memory _text) X (_name) Y (_text){

    }


}

// parent constructors are always called in the order of inheritance
// regardless of the order of parent contracts listed in 
// constructor of the child contract.

// order of constructors called:
// 1. X
// 2. Y
// 3. D


contract D is X,Y{
    constructor() X ("X was called") Y ("yYwas called" ){}
}

// order of constructors called:
// 1. X
// 2. Y
// 3. E

contract E is X,Y{
    constructor() Y ("Y was called") X ("X was called" ){}
}
