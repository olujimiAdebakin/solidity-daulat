

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// In Solidity, super is used to call functions from the immediate parent contract, especially when you're dealing with multiple inheritance.
// alows us to inherit the parent contract

contract A {
    function greet() public pure virtual returns (string memory) {
        return "Hello from A";
    }
}

contract B is A {
    function greet() public pure virtual override returns (string memory) {
        return "Hello from B";
    }
}

contract C is B {
    function greet() public pure override returns (string memory) {
        return super.greet(); // calls B.greet()
    }
}