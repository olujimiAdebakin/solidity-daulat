
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Event {
    // event declaration
    // up to 3 parameters can be idexed.
    // Indexed parameters helps you filter the logs by the indexed parameter

    event Log (address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello world");
        emit Log(msg.sender, "Hello Buterin");
        emit Log(msg.sender, "Hello Olujimi");
        emit AnotherLog();
    }

    
}