//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;

contract demo {
    address public owner;
    constructor() {
        owner = msg.sender;
    }
    modifier onlyOwner(){ 
        require(msg.sender == owner, "You are not the owner");  
        _;
    }
    function get10() public view onlyOwner returns(uint){
        return 10;
    }
    function get20() public view onlyOwner returns(uint){
        return 20;
    }
    function get30() public view onlyOwner returns(uint){
        return 30;
    }
}

// modifier - is used for reducing the redundancy of the code
// the underscore(_) is replaced by the body of the function 
// if the require is true then it is procceded with the body of the function