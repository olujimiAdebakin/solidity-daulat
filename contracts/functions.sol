

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract Function{
    // functions can retuen multiple values
  function returnMany() public pure returns (uint, bool, uint){
    return(24 ,true, 10);
  }

//   Return values can be named.
function named() public pure returns (uint X, bool y, uint c){
    return (35, true, 8);
}

//   Return values can be assigned to there name.
// in this case the return statement can be omitted.
function assigned() public pure returns (uint x, bool r, uint e){
    return (x = 10, r = true, e= 30);
}

// using destructuring assignment when calling another
// function that returns multiple values
function destructuringAssignments() public pure returns (uint, bool, uint, uint, uint ){
    (uint a, bool b, uint c) = returnMany();

    // value can be left out 
    (uint x, ,uint w) =  (3, 4, 8);

    return (a, b, c, x, w);
}
}