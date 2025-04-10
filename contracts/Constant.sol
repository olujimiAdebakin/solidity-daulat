

// SPDX-License-Identifier: MIT


pragma solidity ^0.8.18;


contract Constant{

    // USED FRO VARIABLES THAT ARE NOT GONNA CHANGE IN THE CONTRACT
    // CONSTANT VARIABLE IS USED FOR GAS EFFICIENCY LESSER GAS FEE

    //	70063
    // address public myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4

    // 	45697 lesser gas fee
    address public constant MY_ADDR = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function getConstant() public pure returns(address){
        return MY_ADDR;
    }
}