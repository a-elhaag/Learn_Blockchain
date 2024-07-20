// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;  // Choosing version

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfSimpleStorageContracts;


    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function  storageFactoryStore(uint256 _simpleStorageIndex, int256 _simpleStorageNum) public {
        // Address
        // ABI stands for application binary interface
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.setNum(_simpleStorageNum);

    }


    function storageFactoryGet(uint256 _simpleStorageIndex) public view returns(int256){
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.getNum();
    }
}
