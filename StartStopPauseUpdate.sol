//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

contract StartStopUpdate{

    address public owner;
    bool paused;
    bool public destroyed;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(msg.sender == owner, "Only Owner has the permission");
        _;
    } 

    modifier isDestroyed{
        require(destroyed != true , "The contract is destroyed");
        _;
    }
    
    function sendMoney() public payable isDestroyed{

    }

    function setPaused(bool _paused) public onlyOwner isDestroyed{
        paused = _paused; 
    }

    function withdrawAllMoney(address payable _to) public onlyOwner isDestroyed{
        require(paused == true , "The Contract is on Paused Mode");
        _to.transfer(address(this).balance);
    }

    function stop(address payable _to) public onlyOwner isDestroyed{
        destroyed = true;
        selfdestruct(_to);
    }

}