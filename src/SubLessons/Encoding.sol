// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Encoding {
    constructor() {
        
    }

    function combineStrings() public pure returns(string memory){
        return string(abi.encodePacked("Hi Mom!", "How are you?"));
    }
}

// globally available methods and units