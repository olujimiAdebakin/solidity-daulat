// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract RecieveEther{
    // function to Recieve Ether. msg.data muxt be empty

    receive() external payable {}

    // fallback functin is called when msg.data is not empty
    fallback() external payable {}

    function getBalance() public view returns (uint){
        return address(this).balance;
    }

}


contract SendEther {
    function sendViaTransfer(address payable _recipient) public payable {
        _recipient.transfer(msg.value);
    }

    function sendViaSend(address payable _recipient) public payable {
        // this method is not recommended
        bool sent = _recipient.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    function sendViaCall(address payable _recpient) public payable {
        // call returns a boolean value indication success or failure.
        // this is the current recommende method
        (bool sent, ) = _recpient.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}