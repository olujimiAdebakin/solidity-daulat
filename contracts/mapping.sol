

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Mapping{

    // mapping address to uint
    mapping(address => uint) public myMap; //contains all addresses this is a mapping (or dictionary) where each address maps to some value.

    // function to get the ID of the user
    function get(address _addr) public view returns (uint){
        // mapping always returns a value.
        // if the value was never set, it will return the default value

        return myMap[_addr]; //get the ID of the user

    }

    // function to set the user of the Id into the address

    function set(address _addr, uint _id) public {
        // update the value at this addres
        myMap[_addr] = _id;

    }

    // remove data from the list 
    function remove(address _addr) public {
        // reset the value to the default value
        delete myMap[_addr];
    }
}


contract NestedMapping {
    // Nested mapping (mapping from address to another mapping)
     // Nested mapping: maps an address to another mapping,  
    // which maps a uint to a boolean value.   
    // This structure allows tracking of multiple boolean flags  
    // for each address under different keys.  
    mapping (address => mapping (uint => bool))public nested;

    function get(address _addr1, uint _id) public view returns (bool){
        // you can get values from a nested mapping
        // even when it is not initialized
        return nested[_addr1][_id];
    }

    // function to set users into the nested mapping
    function set(address _addr1, uint _id, bool _boo) public {
        nested[_addr1][_id] = _boo;
    }

    // function to delete users from nested mapping
    function remove (address _addr1, uint _id) public{
        delete nested[_addr1][_id];
    }
}
