//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
 
contract demo {
    // int8 public number = 128;
    // string public str= "hello world";
    bool public value = true;
 
 
    //integers
    function printInt() public pure returns(int){
        int a = 10;
        return a;
    }
 
    // strings
    function printString () public pure returns(string memory){
        string memory str1 = "gooood";
        return str1;
    }
    function check(int num) public pure returns(string memory){
        string memory str;
 
        if(num > 0 ){
            str = "Num is greater than zero";
        }
        else if(num == 0){
            str = "Num is equal to zero";
        }
        else {
            str = "Num is smaller than zero";
        }
        return str;
    }
 
 
    // booleans
    function checkNew(int item) public pure returns(bool){
        bool value = false;
        if(item < 0 ){
            return value;
        }
        value = true;
        return value;
    }
 
    function checkEven(int num) public pure returns(bool){
        bool isTrue = false;
        if(num % 2 != 0 ){
          return isTrue;
        }
        isTrue = true;
        return isTrue;
    }
 
    // arrays - fixed arrays & dynamic type arrays
    //fixed arrays - size is known during the compile time
    uint[3] public arr = [1,2,3];
 
    function insert(uint index, uint element) public {
        arr[index] = element;
    }
    function len() public view returns(uint){
        return arr.length ;
    }
 
    // dynamic arrays - size is not known during the compile time
    uint[] public narr;
 
    function pushElement(uint item) public {
        narr.push(item);
    }
    function removeElement() public  {
        narr.pop();
    }
    function sizeOfArr() public view returns(uint){
        return narr.length;
    }
 
    //bytes array  - by default contains 0's and the value stored in hexadecimals
    //fixed bytes array
    bytes1 public b1;
    bytes2 public b2;
    bytes3 public b3;
 
    function setter() public {
        b1 = "a";
        b2 = "ab";
        b3 = "abc";
    }
    // dynamic bytes array
    bytes public db1 = "abc";
    function pushElements() public {
        db1.push("d");
    }
    function getElements(uint index) public view returns(bytes1){
        return db1[index];
    }
    function getLength() public view returns(uint){
        return db1.length;
    }
 
    // loops  - do while , for , while
    uint[5] public ar = [1,2,3,4,5];
    uint public sum ;
    // while
    function whileLoop() public{
        uint count ;
        while(count < ar.length){
            sum += ar[count];
            count+=1;
        }
    }
    //for
    function forLoop() public {
        for(uint c = 0; c < ar.length ; c++){
            sum += ar[c];
        }
    }
    // do while
    function doWhile() public {
        uint count = 0;
        do {
            sum+= ar[count] ;
            count++;
        }
        while(count < ar.length);
    }
 
    // storage arrays & memory arrays
    string[] public vehicles = ["van", "car", "bike"];
 
    function mem() public view{
        string[] memory v1 = vehicles;
        v1[0] = "ship";
    }
    function sto() public {
        string[] storage v1 = vehicles;
        v1[0] = "aeroplane";
    }
}

