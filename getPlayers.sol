//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;

contract demo {
    address[16] public players ;

    function addTeamPlayers(address[16] memory _players) public{
        for(uint i = 0; i < 16; i++){
            players[i] = _players[i];
        }
    }
    
    function getTeamPlayers() public view returns(address[16] memory) {
        return players;
    }

    function selectJerseyNumber(uint n) public view returns(address){
        require(n>=0 && n <=15 , "The number you entered does not belong");
        return players[n];
    }
}