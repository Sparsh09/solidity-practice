//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

abstract contract AbstractContract{
    string public str;
    address public manager;
    constructor(){
        str = "Hello World";
        manager = msg.sender;
    }
    function setter(string memory _str) public virtual;
}

contract AbstractChild is AbstractContract{
    uint public x;
    function setter(string memory _str ) public override{
        str = _str;
    }
}

// use of abstract contracts is that it is used to set the structure for the
// the other contracts 