
// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.18;

// contract Reciever {
//     event Received(address caller, uint amount, string message);

//     fallback() external payable {
//         emit Received(msg.sender, msg.value, "Fallback was called");
//     }

//     function foo(string memory _message, uint _x) public payable returns (uint) {
//         emit Received(msg.sender, msg.value,  _message);

//         return _x + 1;
//     }
// }

// contract Caller {
//     event Response(bool success, bytes data);

//     // lets imagine that contract caller does not have the source code for the contract Reciever, but we do know the address of contract Reciever and the function call.

//     function testCallerFoo(address payable _addr) public payable {
//         // you can send ether and specify a custom gas aount
//       (bool success, bytes memory data) = _addr.call{value: msg.value, gas: 5000}(
//     abi.encodeWithSignature("foo(string,uint256)", "call foo", 123)
// );


//         emit Response(success, data);
//     }

//     // calling a function that does not exist triggers the fallback function
//     function testCallDoesNotExist(address payable _addr) public payable {
//        (bool success, bytes memory data) = _addr.call{value: msg.value}(abi.encodePacked("doesNotExist()"));

//         emit Response(success, data);
//     }
// }