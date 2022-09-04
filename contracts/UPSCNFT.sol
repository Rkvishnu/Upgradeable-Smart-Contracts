//SPDX-License-Identifier:MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";




contract UPSCNFT is Initializable,ERC721Upgradeable,UUPSUpgradeable,OwnableUpgradeable{
        // initializer modifier that is coming from the opezeppelin's upgradaeable lib. which ensure that the
    // initialize function is only called once

    function initialize() public initializer{
       // instead of using the ERC721() constructor, we have to manually initialize it
        // Same goes for the Ownable contract where we have to manually initialize it
__ERC721_init("UPSCNFT","UPSCNFT");
__Ownable_init();
_mint(msg.sender,1);

    }
function _authorizeUpgrade(address newImplementaion) internal override onlyOwner{

}
    

}