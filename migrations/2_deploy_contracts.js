var Ownable = artifacts.require("./zeppelin/ownership/Ownable.sol");
var Pointer = artifacts.require("./OraclyPointer.sol");

module.exports = function(deployer) {
  deployer.deploy(Ownable);
  deployer.link(Ownable, Pointer);
  deployer.deploy(Pointer);
};
