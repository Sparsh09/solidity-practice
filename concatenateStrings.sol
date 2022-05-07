//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;

contract demo {

    function concatenate(string memory str1, string memory str2) public pure returns(string memory){

        bytes memory bt1 = bytes(str1);
        bytes memory bt2 = bytes(str2);

        bytes memory bt3 = bytes(new string(bt1.length + bt2.length));
        uint count = 0 ;
        for(uint i = 0; i < bt1.length ; i++){
            bt3[count++] = bt1[i];
        }
        for(uint i = 0; i < bt2.length; i++){
            bt3[count++] = bt2[i];
        }
        return string(bt3);
    }
}