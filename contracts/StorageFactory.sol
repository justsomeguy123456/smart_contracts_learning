//SPDX-License_Identifier: MIT

pragma solidity ^0.6.0;


import"./SimpleStorage.sol";


contract StorageFactory is SimpleStorage1{

    SimpleStorage1[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage1 simpleStorage = new SimpleStorage1();
        simpleStorageArray.push(simpleStorage);
}

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        //address
        //abi
      SimpleStorage1(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
   
    }

    function sfGet(uint256 _simpleStorageIndex) public view  returns (uint256){
        return(SimpleStorage1(address(simpleStorageArray[_simpleStorageIndex])).retrieve());
       
    }
}