



// SPDX-License-Identifier: MIT


pragma solidity ^0.8.18;

// GLOBAL VARIABLE

contract GlobalVariable{

    // address public owner;

    // example of global varaibles
        address public owner;
        address public Myblockhash;
        uint256 public blockNumber;
        uint256 public gasLimit;
        uint256 public gasUsed;
        uint256 public timestamp;
        uint256 public difficulty;
        uint256 public gasPrice;
        address public coinbase;
        uint256 public value;
        bytes4 public Firstfour;
        address public origin;
        bytes public  callData;
        uint256 public  nowOn;



    constructor()payable{

        

        owner = msg.sender; //output the senders address // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
         Myblockhash = address(this);
        blockNumber = block.number;
        gasLimit = block.gaslimit;
        gasUsed = gasleft();
        timestamp = block.timestamp;
        difficulty = block.prevrandao;
        gasPrice = tx.gasprice;
        coinbase = block.coinbase;
        value = msg.value;
        // Firstfour = bytes4(keccak256("test"));
        Firstfour = msg.sig;
        origin = tx.origin;
        callData = msg.data;
        nowOn = gasleft();

        Myblockhash = address(this); // Returns the contract's own Ethereum-style address

blockNumber = block.number; // Gets current blockchain height (number)

gasLimit = block.gaslimit; // Retrieves maximum allowed Gas for a transaction in this Block

gasUsed = gasleft(); // Calculates how much of that max limit has been used so far by the tx

timestamp = block.timestamp;// Returns time at which particular block was mined

difficulty = block.prevrandao ;// Gets random number generated based on Beacon Chain, for use with PoW algorithms

gasPrice = tx.gasprice; // Retrieves current Gas price set in transaction being executed

coinbase = block.coinbase; // Returns address that created this particular Block

value = msg.value; // Shows how much Ether was sent along with the message (tx)

Firstfour= msg.sig ; // Obtains four leftmost bytes from a contract's function signature

origin = tx.origin;// Indicates who initiated transaction, not necessarily where it came from within that entity

callData = msg.data; // Holds data being passed to smart contracts by external transactions

nowOn = gasleft(); // Returns current amount of Gas left for execution

        // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    }
}