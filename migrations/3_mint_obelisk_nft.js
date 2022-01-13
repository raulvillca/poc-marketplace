const ObeliskNFT = artifacts.require("ObeliskNFT");

const migrationRepository = require('../repositories/migrationDB');

module.exports = async function (deployer, network, accounts) {
  const contract = await ObeliskNFT.at(migrationRepository.getByKeyName("obeliskNFT"));

  const result = await contract.mintNft({from: accounts[0]});

  console.log(result);
};
