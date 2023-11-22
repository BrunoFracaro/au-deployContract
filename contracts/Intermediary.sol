//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Intermediary {
  address public contract2 = 0xcF469d3BEB3Fc24cEe979eFf83BE33ed50988502;

  constructor() {
    (bool success, ) = contract2.call(abi.encodeWithSignature("attempt()"));
    require(success, "Call to Contract2 failed");
  }
}
