// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract Enum{
    // Enum representing shipping status
    enum Status { 
        Pending, 
        Shipped,
         Delivered, 
         Rejected,
         Canceled
         }

        //  default value is the first element listed in definition of the type, in this case "Pending"
           // Track the current status
        Status public orderStatus;
        
        // Returns uint
        // Pending - 0

        // Shipped - 1

        // Delivered - 2
   
       // Cancelled -3
      
      function get() public view returns (Status){
        return orderStatus;
      }

    //   update status by passing uint into input
    function set(Status _status)public {
        orderStatus = _status;

    }

    // you can update to a specific enum like this
    function cancel() public {
        orderStatus = Status.Canceled;
    }

    // delete resets the enum to its first value, 0
    function reset() public {
        delete orderStatus;
    }
}