

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


// SOLIDITY ERROR HANDLING


// ---- require statement


contract Require{
    function checkInput(uint256 _input) public pure returns (string memory){
        require(_input >= 0, "Require: Input must be greater than 0");
          require(_input <= 30, "Require: Input must be less than 30");

          return "You are correct";
    }

    function EvenNumber(uint256 _input) public pure returns (bool){
        require(_input /2 != 0);
        return true;
    }


    // -----assert

    bool public result;

    function checkOverflow(uint256 _num1, uint256 _num2) public {
         uint256 sum = _num1 + _num2;
         assert(sum <= 299);
         result = true;
    }

    function getResult() public view returns(string memory){
        if(result == true){
            return "No Overfow";
        }else {
            return "Overflow Exist";
        }
    }


    // ----REVERT KEYWORD

    function checkoverflow(uint256 _num1, uint256 _num2) public pure returns (string memory){
        uint256 sum = _num1 + _num2;

        if(sum < 0 || sum > 300){
            revert ("Overflow Exist");
        }else if(sum > 500){
            revert ("massive overflow");
        }else{
            return "no overflow";
        }
    }
}
