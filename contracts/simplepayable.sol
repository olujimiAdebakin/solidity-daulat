
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimplePayable {
    address public owner;

    //  Setting deployer as contract owner using constructor
    constructor() {
        owner = msg.sender;
    }

    //  Modifier to restrict to owner only
    modifier onlyOwner() {
        require(msg.sender == owner, "You Are Not the contract owner");
        _;
    }

    //  function to accept ETH
    receive() external payable {}

    //  Fallback function for non existent data
    fallback() external payable {}

    //  Get the net balance of the contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    //  Withdraw all ETH to the owner
    function withdrawAll() public onlyOwner {
        payable(owner).transfer(address(this).balance);
    }

    //  Withdraw specific amount to any valid address with checks
    function withdrawTo(address payable _recipient, uint _amount) public onlyOwner {
        require(_recipient != address(0), "Invalid recipient address");
        require(_amount > 0, "Amount to be withdraw must be greater than nill");
        require(address(this).balance >= _amount, "Insufficient contract balance");

        _recipient.transfer(_amount);
    }
}
