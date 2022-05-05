//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;

contract demo {


    address payable user = payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
    function payEther() public payable{

    }

    function checkBalance() public view returns(uint){
        return address(this).balance;
    }

    function payEtherToAccount() public {
        user.transfer(10 ether);
    }
    event paymentReceived(address sender, uint value);
    receive() external payable{
        emit paymentReceived(msg.sender , msg.value);
    }

    fallback() external payable{
        payable(msg.sender).transfer(msg.value);
    }
}


// recieve function - This function will be called every time we send ethers to the contract 

// fallback function - this function is called only when no other function is called from the contract when the requirement does not meet or the function call made does not exist
// so the evm call this function from the smart contract

// they both don't take any parameters and has no return value and must be external .