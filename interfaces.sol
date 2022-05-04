//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

interface Parent{
    function setter(string memory _str) external;
}
contract Child is Parent{
    function setter(string memory _str) public override{

    }
}

// What is interface -> interface is an agreement or contract between itself and any contract 
// that implements it

// They can only inherit from other interfaces but not from other contracts
// They can't declare state variables
// They can't declare constructor
// Functions can be declared but can't be implemented . Functions must be external 