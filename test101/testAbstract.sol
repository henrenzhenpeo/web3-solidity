// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// abstract contract InsertionSort {
//     function insertionSort(uint[] memory a) public pure virtual returns(uint[] memory);
// }
interface Base {
    function getFirstName() external pure returns (string memory);
    function getLastName() external pure returns (string memory);
}

// abstract contract Base {
//     string public name = "Base";
//     function getAlias() public pure virtual returns (string memory);
// }

contract BaseImpl is Base {
    // function getAlias() public pure override returns (string memory) {
    //     return "BaseImpl";
    // }
    function getFirstName() external pure override returns (string memory) {
        return "Amazing";
    }
    function getLastName() external pure override returns (string memory) {
        return "Ang";
    }
}