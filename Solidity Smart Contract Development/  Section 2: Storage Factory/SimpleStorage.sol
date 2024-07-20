// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;  // Choosing version

contract SimpleStorage{
    int256  num = 0;

    struct person{
        uint fav_num;
        string name;
    }

    person internal p= person(1,"Joe");

    person[] public list_of_persons; 
    mapping(string => uint) public nameToFavNum;

    function setNum(int256 x) public {
        num = x;
    }

    function getNum() public view returns (int256) { // cant set a value 
        return num;
    }

    function add_person(string memory _name, uint _num) public {
        list_of_persons.push(person(_num, _name));
        nameToFavNum[_name] = _num; 
    }

}

