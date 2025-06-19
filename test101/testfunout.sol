// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract funout {
    //可以在returns 中标明返回变量名称。Solidity会初始化这些变量 无需使用return
    function returnNamed() public pure returns(uint256 _number,bool _bool,uint256[3] memory _array){
        _number = 2;
        _bool = false;
        _array = [uint256(3),2,1];
    }

    function returnNamed2() public pure returns(uint256 _number,bool _bool,uint256[3] memory _array){
        return(1,true,[uint256(1),2,8]);
    }

    // 返回值，解构式赋值
    function readReturn() public pure{
        //读取全部返回值
        uint256 _number;
        bool _bool;
        // bool _bool2;
        uint256[3] memory _array;
        (_number,_bool,_array) = returnNamed();
        (,_bool,) = returnNamed();
    }


    // 变量数据存储和作用域
    function fCalldata(uint[] calldata _x) public pure returns(uint[] calldata) {
        //参数为calldata的数组，不能被修改
        //_x[0] = 0; //这样修改会报错
        return(_x);
    }

    //数据位置和赋值规则
    uint[] x = [1,2,3]; //状态变量：数组x
    function fStorage() public {
        //声明一个storage 的 变量 xStorage 指向x，修改xStorage也会影响x
        uint[] storage xStorage = x;
        xStorage[0] = 100;
    }
}

 //变量作用域
contract Variables {
    //solidity 划分3种作用域 状态：state varibale 局部：local variable 全局：global variable
    //存在链上public gas消耗高
    uint public x = 1;
    uint public y;
    string public z;

    //可以在函数里面更改变量值
    function foo() external {
        x = 5;
        y = 8;
        z = "0xaa";
    }

    function bar() external pure returns(uint) {
        uint xx = 1;
        uint yy = 3;
        uint zz = xx + yy;
        return(zz);
    }

    function global() external view returns (address,uint,bytes memory) {
        address sender = msg.sender;
        uint blockNum = block.number;
        bytes memory data = msg.data;
        return (sender,blockNum,data);
    }

    //以太单位 solidity中不存在小数点 以 “0”代替小数点
    function weiUnit() external pure returns(uint) {
        assert(1 wei == 1e0);
        assert(1 wei == 1);
        return 1 wei;
    }

    function gweiUnit() external pure returns(uint) {
        assert(1 gwei == 1e9);
        assert(1 gwei == 1000000000);
        return 1 gwei;
    }

    function etherUnit() external pure returns(uint) {
        assert(1 ether == 1e18);
        assert(1 ether == 1000000000000000000);
        return 1 ether;
    }

    //时间单位
    function secondsUnit() external pure returns(uint) {
        assert(1 seconds == 1);
        return 1 seconds;
    }

    function minutesUnit() external pure returns(uint) {
        assert(1 minutes == 60);
        assert(1 minutes == 60 seconds);
        return 1 minutes;
    }

    function hoursUnit() external pure returns(uint) {
        assert(1 days == 86400);
        assert(1 days == 24 hours);
        return 1 days;
    }

    function weeksUnit() external pure returns(uint) {
        assert(1 weeks == 604800);
        assert(1 weeks == 7 days);
        return 1 weeks;
    }
}
