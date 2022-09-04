 const {expect}=require("chai");
 const {ethers}=require("hardhat");
 const hre =require("hardhat");

 describe("ERC721 Upgradeable", function(){
  it("Should deploy an Upgradeable ERC721 Contract",async function(){
    const UPSCNFT =await ethers.getContractFactory("UPSCNFT");
    const UPSCNFT2= await ethers.getContractFactory("UPSCNFT2");

    //This function comes from the @openzeppelin/hardhat-upgrades library that you installed,
    let proxyContract = await hre.upgrades.deployProxy(UPSCNFT,{
      kind:"uups",
    });
    const [owner]= await ethers.getSigners();
    const ownerOfToken1 =await proxyContract.ownerOf(1);

    expect(ownerOfToken1).to.equal(owner.address);

    proxyContract =await hre.upgrades.upgradeProxy(proxyContract,UPSCNFT2);
    expect(await proxyContract.test()).to.equal("upgraded");
  })
 })