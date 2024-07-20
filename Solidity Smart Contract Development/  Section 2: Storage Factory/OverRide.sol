// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "SimpleStorage.sol";

contract NumPlus2 is SimpleStorage{
    function setNum(int256 x) public override  {
        num =x+2;
    }

}
