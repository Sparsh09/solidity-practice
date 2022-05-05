//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;

contract demo {
    string public name;
    address payable public ownerAddress;

    constructor(string memory _name, address payable _owner) {
        name = _name;
        ownerAddress = _owner;
    }

    function deposit() public payable {}

    function sendEther(uint amount, address payable receiver) public {
        require(msg.sender == ownerAddress , "Sender is not allowed");
        receiver.transfer(amount);
    }

    function balanceOf() public view returns(uint){
        return address(this).balance;
    }

}