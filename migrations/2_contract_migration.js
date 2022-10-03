const erc721 = artifacts.require("erc721.sol");

module.exports = function (deployer) {
  deployer.deploy(erc721);
};