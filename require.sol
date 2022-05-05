//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;

contract demo {
    address public owner;
    constructor() {
        owner = msg.sender;
    }
    function get() public view returns(uint){
        require(msg.sender == owner, "You are not the owner");  
        return 10;
    }
}

// require is similar to if else but it makes our code cleaner i    