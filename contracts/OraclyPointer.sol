/**
 * Copyright (c) 2017-2018 Oracly SRL
 */

pragma solidity ^0.4.20;

import "./zeppelin/ownership/Ownable.sol";

/**
 * @title OraclyPointer
 */

contract OraclyPointer is Ownable {

  address public connectorAddress;
  address public verifierAddress;

  function getConnectorAddress() public view returns (address) {
    return connectorAddress;
  }

  function setConnectorAddress(address newaddr) public onlyOwner {
    connectorAddress = newaddr;
  }

  function getVerifierAddress() public view returns (address) {
    return verifierAddress;
  }

  function setVerifierAddress(address newaddr) public onlyOwner {
    verifierAddress = newaddr;
  }

}
