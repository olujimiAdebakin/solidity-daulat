
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Foo {
    address public owner;

    constructor(address _owner){
        require(_owner != address(0), "invalid address");
        assert(_owner != 0);
        owner = _owner;
    }

    function myFunc(uint x) public pure returns (string memory){
        require(x != 0, "reqire failed");
        return "my func was called";
    }
}

contract Bar {
    event Log(string message);
    event LogBytes(bytes data);

    Foo public foo;

    constructor() {
        // this foo contract is used fro example of try catch with external call
        foo = new Foo(msg.sender);
    }

    // Example of try /catch with external call
    // tryCatchExternalCall(0) => Log("external call failed")
    // tryCatchExternalCall(1) => Log("my func was called")

    function tryCatchExternalCall(uint _1)public {
        try foo.myFunc(_i) returns (string memory result){
            emit Log(result);
        } catch {
            emit Log("external call failed");
        }


        function tryCatchNewContract(address _owner) public {
            
        }
}