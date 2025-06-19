// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
import "@openzeppelin/contracts/utils/Strings.sol";

contract overTest {
    function saySomething() public pure returns (string memory) {
        return ("Nothing");
    }

    function saySomething(string memory something) public pure returns (string memory) {
        return (something);
    }

    using Strings for uint256;
    function getString1(uint256 _number) public pure returns(string memory) {
        return _number.toHexString();
    }

    function getStrings(uint256 _number) public pure returns (string memory) {
        return Strings.toHexString(_number);
    }

}