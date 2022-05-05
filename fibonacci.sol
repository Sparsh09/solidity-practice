//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;

contract demo {
    function fibo(uint n) public pure returns(uint){
        if(n == 0){
            return 0;
        }
        uint a = 1;
        uint b = 1;
        for(uint i = 2 ; i < n ;i++){
            uint c = a + b;
            a = b;
            b = c;
            
        }
        return b;
    }
}