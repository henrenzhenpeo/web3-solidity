// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract InitialVale {
    // Value Types
    bool public _bool; //false
    string public _string; //""
    int public _int; //0
    uint public _uint;//0
    address public _address; //0x0000000000000000000000000000000000000000

    enum ActionSet {Buy,Hold,Sell}
    ActionSet public _enum; //第一个元素0

    function fi() internal{} //internal空白方程
    function fx() external{} //external空白方程

    //Reference Types
    uint[8] public _staticArray; //所有成员设为其默认静态数组[0,0,0,0,0,0,0]
    uint[] public _dynamicArray; //‘[]’
    mapping (uint => address) public _mapping; //所有元素都为其默认值的mapping
    // 所有成员设为默认值的结构体 0，0
    struct Student{
        uint256 id;
        uint256 score;
    }
    Student public student;

    // 操作符delete
    bool public _bool2 = true;
    function d() external {
        delete _bool2; //delete 会让_bool2变为默认值 false
    }
}