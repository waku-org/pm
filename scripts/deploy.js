const { ethers } = require("ethers");
const fs = require("fs");

async function main() {
    const provider = new ethers.providers.JsonRpcProvider("https://mainnet.infura.io/v3/YOUR_INFURA_PROJECT_ID");
    const wallet = new ethers.Wallet("YOUR_PRIVATE_KEY", provider);

    const abi = JSON.parse(fs.readFileSync("artifacts/contracts/RLN.sol/RLN.json", "utf8")).abi;
    const bytecode = JSON.parse(fs.readFileSync("artifacts/contracts/RLN.sol/RLN.json", "utf8")).bytecode;

    const factory = new ethers.ContractFactory(abi, bytecode, wallet);
    const contract = await factory.deploy();

    console.log("Contract deployed to address:", contract.address);
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
