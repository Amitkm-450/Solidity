//SPDX-License-Identifier MIT
pragma solidity ^0.8.30; //Hello I am amit

contract SimpleStorage {
   boolean , uint, int, address, bytes
   This gets initialiszed to 0
   uint256 public favouriteNumber;
   People public person = People({favouriteNumber 2, name Amit});

   struct People {
    uint256 favouriteNumber;
    string name;
   }

   function store(uint256 _favouriteNumber) public {
    favouriteNumber = _favouriteNumber;
    favouriteNumber = favouriteNumber + 1;
   }
   
   function retrive() public view returns(uint256){
    return favouriteNumber;
   }

}