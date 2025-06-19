// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// 构造函数的继承
abstract contract A {
    uint public a;

    constructor(uint _a) {
        a = _a;
    }
}

contract C is A {
    constructor(uint _c) A(_c * _c){
        
    }
}