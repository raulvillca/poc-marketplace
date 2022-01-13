const ObeliskNFT = artifacts.require("ObeliskNFT");

const migrationRepository = require('../repositories/migrationDB');

module.exports = async function (deployer) {
  deployer.deploy(ObeliskNFT);

  const contract = await ObeliskNFT.deployed();

  migrationRepository.saveByKeyName("obeliskNFT", contract.instance);
};
