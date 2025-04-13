
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Payable {
    // payable address can recieve ETHER
    address payable public owner;

    // payable constructor can recieve Ether
    constructor() payable {
        owner = payable(msg.sender);
    
    }

    // function to deposit Ether into this contract
    // call this function along with some Ether.
    // The balance of this contract will be automatically updated

    function deposit() public payable {}

    // call this function along with some Ether.
    // The function throw an error since this function is not payable
    function nonpayable () public {}

    // function to withdraw all ether frm this contract
    function withdraw () view public {
        // get the amount of Ether stored in this contract
        uint amount = address(this).balance;

        // send all ether to owner
        // owner can recieve ether since the address of owner is payable
        (bool success,) = owner.call{value: amount};
        require(success, "failed to send ether");
    }

    // function to transfer Ether from this contract to address from input

    function transfer(address payable _to, uint _amount) public {
        // Note that "to" is declared as payable
        (bool success,) = _to.call{value: _amount};
        require(success, "failed to send Ether");
    }

}
