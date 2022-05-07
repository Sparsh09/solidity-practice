//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;

contract demo {
    address payable public payer;
    address payable public payee;
    address payable public thirdParty;
    uint public amount;

    constructor(address payable _payer , address payable _payee, uint _amount){
        payer = _payer;
        payee = _payee;
        amount = _amount;
        thirdParty = payable(msg.sender);
    }

    function deposit(uint _amount) public view {
        require(payer == msg.sender, "Sender must be the payer");
        require(address(this).balance <= _amount, "Can't send more than the Escrow Account");

    }

    function release() public {
        require(address(this).balance == amount , "Cannot send the funds before full amount is given");
        require(msg.sender == thirdParty , "only third party can release the funds");
        payee.transfer(amount);
    }

    function balanceOf() public view returns(uint) {
        return address(this).balance;
    }
}