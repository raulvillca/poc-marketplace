const DeckCollection = artifacts.require("DeckCollection");

const migrationRepository = require('../repositories/migrationDB');

module.exports = async function (deployer, network, accounts) {
  const contract = await DeckCollection.at(migrationRepository.getByKeyName("deckCollection"));

  const result = await contract.mintCollection({from: accounts[0]});

  console.log(result);
};
