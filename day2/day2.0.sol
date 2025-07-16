//SPDX-License-Identifier: MIT
pragma solidity ^0.8.30; //Hello I am amit

//pragma solidity >= 0.8.7 <0.9.0
contract SimpleStorage {
   //boolean , uint, int, address, bytes
   //This gets initialiszed to 0
   uint256 favouriteNumber;

   struct People {
    uint256 favouriteNumber;
    string name;
   }

   mapping(string => uint256) public nameToFavouriteNumber;
   
   // People[size] public people; Fixed size array
   // uint256[] public favouriteNumberList;
   People[] public people; //Dynamic array
   
   function store(uint256 _favouriteNumber) public {
    favouriteNumber = _favouriteNumber;
    favouriteNumber = favouriteNumber + 1;
   }
   
   //view, pure
   function retrive() public view returns(uint256){
    return favouriteNumber;
   }
   
   //calldata, memory, storage [Data Location] are uded for array, struct and mapping
   //====================================== 
   //calldata and memory are used for temporary data 
   //calldata is used when we dont modify the variable
   //memory is used if we try to modify the variable

   //storage is used to store permamnent data 
   function addPerson(string calldata _name, uint256 _favouriteNumber) public {
      //we cannt modify _name here
      // _name = "K"; ERROR
      People memory newPeople = People(_favouriteNumber, _name); //we can modify newPeople here
      nameToFavouriteNumber[_name] = _favouriteNumber;
      people.push(newPeople);
   }

}