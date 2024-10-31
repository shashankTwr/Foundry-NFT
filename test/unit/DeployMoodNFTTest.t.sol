// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {MoodNFT} from "../../src/MoodNFT.sol";
import {Script} from "forge-std/Script.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";
import {Test, console} from "forge-std/Test.sol";
import {DeployMoodNFT} from "../..//script/DeployMoodNFT.s.sol";

contract DeployMoodNFTTest is Test {
    DeployMoodNFT public deployer;

    function setUp() public {
        deployer = new DeployMoodNFT();
    }

    function stringCompare(string memory a, string memory b) public pure returns (bool) {
        return keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(b));
    }

    function testSvgToImageURI() public view {
        string memory svg =
            '<svg xmlns="http://www.w3.org/2000/svg" width="500" height="500"><text x="0" y="15" fill="#db0000"> hi! you decoded this </text></svg>';
        string memory expectedURI =
            "data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI1MDAiIGhlaWdodD0iNTAwIj48dGV4dCB4PSIwIiB5PSIxNSIgZmlsbD0iI2RiMDAwMCI+IGhpISB5b3UgZGVjb2RlZCB0aGlzIDwvdGV4dD48L3N2Zz4=";
        string memory actualURI = deployer.svgToImageURI(svg);
        console.log(actualURI);
        console.log(expectedURI);
        assert(stringCompare(actualURI, expectedURI));
    }
}
