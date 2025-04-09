

// SPDX-License-Identifier: MIT


pragma solidity ^0.8.18;

contract NftCount{
    uint public numberOfNFT;

     // function to allow see Number of NFT

    function seeNumberOfNFT()public view returns (uint256)  {
            return numberOfNFT;
        }

    // this function will increment the NFT Number

    function addNFT() public {
        numberOfNFT += 1;
    }

    // this function will decrease NFT Number by 1

    function decreaseNFT() public {
        numberOfNFT -=1;
    }

   
}