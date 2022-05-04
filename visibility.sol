//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

contract Parent{ // Within Contract

    function f1() public pure returns(uint){
        return 1;
    }
    function f2() private pure returns(uint){
        f1();
        return 2;
    }
    function f3() internal pure returns(uint){
        f2();
        return 3;
    }
    function f4() external pure returns(uint){
        f3();
        return 4;
    }
}

contract Child is Parent { // Derived Conract 

    uint public x = f3(); // internal because it is inherited from its parent contract 
    uint public x1 = f1(); // public 
    
}

contract demo { // Other Contact 
    Parent parent = new Parent();
    uint public x = parent.f4(); // external can be called from other contracts 
    uint public y = parent.f1(); // public can be called from anywhere
}



// Public - Accessible from outside the world , within the contract , derived contract and other contracts
// Private - Can only be accessible from within the contracts 
// Internal - Can be accessible from within the contracts and derived contracts 
// External -  Can be accessible from the outside the world , other contracts and derived contracts 