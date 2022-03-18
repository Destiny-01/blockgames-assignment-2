// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SetToken is ERC20 {
    constructor() ERC20("Set Token", "SET") {
      _mint(msg.sender, 1000000);
    }

  function buyToken(address reciever) public payable returns (uint256) {
    require(msg.value > 0, "Send ETH to buy some tokens");

    uint256 amountToBuy = msg.value * 1000;

    _mint(reciever, amountToBuy);
    return amountToBuy;
  }
}