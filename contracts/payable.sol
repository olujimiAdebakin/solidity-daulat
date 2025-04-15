// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Payable {
    // Payable address can receive ETH
    address payable public owner;

    // Constructor is payable, can receive ETH at deployment
    constructor() payable {
        owner = payable(msg.sender);
    }

    // Function to deposit Ether into this contract
    function deposit() public payable {}

    // This will throw error if someone tries to send ETH to it
    function nonpayable() public {}

    // ✅ Fixed: Withdraw all ETH from contract to owner
    function withdraw() public {
        uint amount = address(this).balance;

        // ✅ send all Ether to the owner
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether");
    }

    // Transfer specific ETH amount to any payable address
    function transfer(address payable _to, uint _amount) public {
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }
}
