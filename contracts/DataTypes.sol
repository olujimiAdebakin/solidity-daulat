

// SPDX-License-Identifier: MIT


pragma solidity ^0.8.18;

contract DataTypes{
    bool public hey;
    bool public no =  true;

    // UINT stands for unsigned integer, meaning no negative number
     
   uint256 public maxValueForByte = 2 ** 8 -1; // Maximum value of a byte (uint8)
    
    uint16 public maxValueForShort = 2**16-1 ;//Maximum value for short integer type.
 
   uint256 public constant MAX_VALUE_FOR_LONG_INT= 2 ** 32 -1;//Max Value possible in an unsigned int data type


   uint8 public u8 = 1;
   uint public u256 = 456;
   uint public u = 123;

//    NEGATIVE NUMBER
// Negative number are allowed for int Types, like uint, different rages are available from integer
     
    //  int256 ranges from -2**(8*8) to 2 ** (8 *8)-1. They can store positive and negative numbers. Negative

    int8 public g8 = -1;
    int public i256 = 456;
    int public i= -3097 ;

    // Now you can add min and max int

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    // ARRAY

    // in solidity, the data types byte represents a sequence of bytes, so generally there are two types of bytes
    // fixes sized byte arrays 
    // dynamic aized bytes array
    // so when you define bytes, in smart contract its represent dynamic bytes array

    // bytes1 public a;
    // bytes1 public b;

    bytes1 public a;
    bytes1 public b = 0xb7;

    // ADDRESS TYPES

    address public hi;
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // DEFAULT VALUES
    bool public defaultBool; //false
    uint public defaultUint; //0
    int public defaultInt; //0 
    address public defaultAddress; // 0x0000000
    bytes public defaultBytes; //0x

}