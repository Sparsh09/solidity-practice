//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

contract StartStopUpdate{

    address public owner;
    bool paused;


    constructor() {
        owner = msg.sender;
    }
    
    function sendMoney() public payable{

    }

    function setPaused(bool _paused) public {
        require(msg.sender == owner , "Owner can do it");
        paused = _paused; 
    }

    function withdrawAllMoney(address payable _to) public {
        require(owner == msg.sender , "Owner can send money");
        require(paused == true , "The Contract is on Paused Mode");
        _to.transfer(address(this).balance);
    }

}