const DeckCollection = artifacts.require("DeckCollection");

const migrationRepository = require('../repositories/migrationDB');

module.exports = async function (deployer) {
  deployer.deploy(DeckCollection);

  const contract = await DeckCollection.deployed();

  migrationRepository.saveByKeyName("deckCollection", contract.instance);
};
