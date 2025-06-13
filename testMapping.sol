// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;
contract map {
    mapping (uint => address) public idToAddress;
    mapping (address => address) public swapPair;

    struct Student{
        uint256 id;
        uint256 score;
    }
    // mapping (Student => uint) public testVar;
    function writeMap(uint _Key,address _Value) public {
        idToAddress[_Key] = _Value;
    }
    
}