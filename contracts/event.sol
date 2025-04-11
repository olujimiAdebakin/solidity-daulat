
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Event {
    // event declaration
    // up to 3 parameters can be idexed.
    // Indexed parameters helps you filter the logs by the indexed parameter
    // Events are logs that are stored on the blockchain and can be accessed by frontends or monitoring tools (like The Graph or web3.js).

// They don’t use much gas and are not stored in contract state, making them great for tracking things like:

// Deposits

// Withdrawals

// Ownership changes

    event Log (address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello world");
        emit Log(msg.sender, "Hello Buterin");
        emit Log(msg.sender, "Hello Olujimi");
        emit AnotherLog();
    }

    
}