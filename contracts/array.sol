
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Array {
    // several way to intialize an array
    uint[] public arr;
    uint[] public arr2 = [3,4,5];

    // fixed sized array, all elements intialize to 0
    uint[10] public fixedSizeArray;

    // getting info from an array by index
    function get(uint i)public view returns (uint){
        return arr[i];
    }

    // solidity can return the entire array
    // But this function should be avoided for arrays thaat can grow idefinitely in length
    // its a bad practice thoe for gas efficiency

    function push(uint i) public {
        // Append the array
        // this will increase the array length by 1
        arr.push(i);
    }

    function pop() public{
        // Remove last eelement fromm array
        // this will decrease the array length by 1
        arr.pop();
    }

    function getLength() public view returns(uint){
        // get the legnth of an array
        return arr.length;
    }

    function remove(uint index) public{
        // Delete does not change the array length.
        // It resets the value at index to its default value
        // in this case 0
        delete arr[index];
    }

    // function examples() pure external {
    //     // create array in memory, only fixed size can be created
    //     uint[] memory a = new uint[](5);
        
    // }

}

// REMOVE ARRAY BY SHIFTING

contract ArrayRemoveByShifting {
    // [1,2,3] -- remove(1) --> [1,2,3] --> [1,3]
    // [1,2,3,4,5,6] --remove(2) --> [1,2,3,4,5,6,6] --> [1,,2,3,4,5,6]
    // [1,,2,3,4,5,6] --remove(0) --> [2,3,4,5,6,6] --> [2,3,4,5,6]
    // [1] --remove(0) --> [1] --> []

    uint[] public arr;

    function remove(uint _index) public {
        require(_index < arr.length, "index out of bound");

        for (uint i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];

            arr.pop();
        }

          }

        function test()external{
            arr =[1,2,3,4,5];
            remove(2);
            // [1,2,3,4,5]
            assert(arr[0] == 1);
            assert(arr[1] == 2);
            assert(arr[2] == 4);
             assert(arr[3] == 5);
              assert(arr.length == 4);

              arr = [1];
              remove(0);
            // []
            assert(arr.length == 0);

        }
  
}


// REPLACE IN ARRAY
// TO REMOVE FROM THE END

contract ArrayReplaceFromEnd{
    uint[] public arr;

    // Deleting an element creates a gap in the array
    // one trick to keep the array compact is to move the last element into the place to delete

    function remove(uint index) public {
        // move the last element into the place to delete
        arr[index] = arr[arr.length - 1];
        // then remove the last item from array
        arr.pop();
    }

    function test() public {
        arr = [1,2,3,4];

        remove(1);
        // [1,4,3]

        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2);
        // [1,4]

        assert(arr.length == 2);
        assert(arr[0] == 1);
    }
}