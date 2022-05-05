//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;

contract demo {
    
    string public str;
    event register(address manager , string char);

    function setter(string memory _str) public {
        str = _str;
        emit register(msg.sender , str);
    }
}

// events - this help to emit the results from the smart contract on interaction by the user on the front end
// these are stored on logs file of the blockchain
// advantages - user get notify , owner of the smart contract get notify , low cost storage