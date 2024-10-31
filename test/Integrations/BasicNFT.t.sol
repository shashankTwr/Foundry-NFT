// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {DeployBasicNFT} from "../../script/DeployBasicNFT.s.sol";
import {BasicNFT} from "../../src/BasicNFT.sol";

contract BasicNFTTest is Test {
    DeployBasicNFT public deployer;
    BasicNFT public basicNFT;
    address public USER = makeAddr("user");
    string public constant PUG =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";

    function setUp() public {
        deployer = new DeployBasicNFT();
        basicNFT = deployer.run();
    }

    function stringCompare(string memory a, string memory b) public pure returns (bool) {
        return keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(b));
    }

    function testNameIsCorrect() public view {
        assert(stringCompare(basicNFT.name(), "DAWGGG"));
    }

    function testSymbolIsCorrect() public view {
        assert(stringCompare(basicNFT.symbol(), "DAWG"));
    }

    function testCanMintAndHaveBalance() public {
        vm.prank(USER);
        basicNFT.mintNft(PUG);
        assert(basicNFT.balanceOf(USER) == 1);
        assert(stringCompare(PUG, basicNFT.tokenURI(0)));
    }
}
