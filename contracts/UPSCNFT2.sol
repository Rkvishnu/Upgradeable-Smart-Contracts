//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./UPSCNFT.sol";

contract UPSCNFT2 is UPSCNFT {
//
//For that we execute the upgradeProxy method again
// from the @openzeppelin/hardhat-upgrades library which 
//upgrades and replaces NFT with NFT2 without changing the state of the system
    function test() pure public returns(string memory) {
        return "upgraded";
    }
}