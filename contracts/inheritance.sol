

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// IN SOLIDITY MULTIPLE INHERITANCE. CONTRACTS CAN INHERIT OTHER CONTRACT BY USING THE IS KEYWORD.
// FUNCTION THAT IS GOING TO BE OVERRIDDEN BY A CHILD CONTRAT MUST BE DECLARED AS VIRTUAL.
// FUNCTION THAT IS GOING TO OVERRIDE A PARENT FUNCTION MUST USE THE KEYWORD OVERRIDE.

// GRAPH OF INHERITANCE
    //    A
    //    /\
    //    B C 
    //    /  \
    //  F   D, E

 // if you are inheriting the child contract using 'is keyword' it will call all the functions of parent contracts
// so that is why we must declare them as virtual.
contract A{
    function foo() public pure virtual returns (string memory){
        return "A";
    }
}

// CONTRACTS INHERIT OTHER CONTRACTS BY USING THE KEYWORD "IS".

contract B is A {
    //  THE DEFAULT OF THIS CONTRACT IS A  .foo()

    function foo() public pure virtual  override  returns (string memory){
        return "B";
    }
}


  contract C is A {
      function foo() public pure virtual  override  returns (string memory){
        return "C";
    }
  }

//   CONTRACTS CAN INHERIT FROM MULTIPLE CONTRACTS.
// WHEN A FUNCTION IS CALLED THAT IS DEFINED MULTIPLE TIMES IN DIFFERENT CONTRACTS, PARENT CONTRACTS ARE SEARCHED FORM RIGHT TO LEFT, AND IN DEPTH-FIRST MANNER.


contract D is B, C {
    // D.foo() returns "C"
    // SINCE C IS THE RIGHT MOST PARENT CONTRACT WITH FUNCTION foo()
    // the default of this contract is C.foo() . foo() will be called on parent contract 2nd and then B.foo().
    function foo() public pure override(B, C) returns (string memory) {
        return super.foo();
    }

}

contract E is C, B{
    //     // E.foo() returns "B"
    // SINCE B IS THE RIGHT MOST PARENT CONTRACT WITH FUNCTION foo()
    // the default of this contract is B.foo() . foo() will be called on parent contract 2nd and then B.foo().
    function foo () public pure override (C,B) returns (string memory){
        return super.foo();
      }
}

// inheritance must be ordered from "most base-like" to "most derived"
// swapping the order of A and B will throw a compilation error

contract F is A, B {
    function foo() public pure override (A, B) returns (string memory){
        return super.foo();
    }
}