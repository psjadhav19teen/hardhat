const {expect}=require("chai");
const { ethers } = require("hardhat");
describe("Counter Project",function(){
        it("Display increment and decrement",async function()
        {
            const [owner]=await ethers.getSigners();
            const counter=await ethers.getContractFactory("counter");
            const counterhardhat=await counter.deploy();
           const increment=await counterhardhat.increment();
            expect(await counterhardhat.increment());
        });
    
});