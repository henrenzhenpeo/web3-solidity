// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract test{
    address owner;

    constructor(address initialOwner) {
        owner = initialOwner;
    }

    // 定义modifier
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function changeOwner(address _newOwner) external onlyOwner{
        owner = _newOwner;
    }
}