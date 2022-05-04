//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

contract demo{

    function sum(uint a , uint b) public pure returns(uint){
        return a+b;
    }
    function sum(uint a, uint b, uint c) public pure returns(uint){
        return a+b+c; 
    }
    function sum(string memory a, string memory b) public pure returns(string memory){
        b = "hello";
        return a;
    }
}

//Polymorphism - when multiple functions are declared with same name but with 
// different number of parameters or with different data types it is called as function polymorphism 
// it is also called as method overloading 