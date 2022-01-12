const DeckCollection = artifacts.require("DeckCollection");

module.exports = function (deployer) {
  deployer.deploy(DeckCollection);
};
