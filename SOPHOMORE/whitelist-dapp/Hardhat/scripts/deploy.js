const { ethers } = require("hardhat");

async function main() {
  const whiteListContract = await ethers.getContractFactory("Whitelist");

  const deployedWhiteListContract = await whiteListContract.deploy(10);

  await deployedWhiteListContract.deployed();

  console.log("Whitelist Contract Address:", deployedWhiteListContract.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

// Whitelist Contract Address: 0x1742e1669f552E610c0017D36167c8161E5a66dA
