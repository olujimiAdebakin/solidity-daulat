// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserManager {
    // Define the struct
    struct User {
        string name;
        uint age;
        bool isActive;
    }

    // Mapping to store users by address
    mapping(address => User) public users;

    // Register a new user
    function register(string memory _name, uint _age) public {
        users[msg.sender] = User(_name, _age, true);
    }

    // Get user info
    function getUser(address _userAddress) public view returns (User memory) {
        return users[_userAddress];
    }
}
