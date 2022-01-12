// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract DeckCollection is ERC1155 {

    uint256 public constant OBELISK = 1;
    uint256 public constant SLIFER = 2;
    uint256 public constant DRAGON_RA = 3;

    constructor() public ERC1155("https://game.example/api/item/{id}.json") {
        _mint(msg.sender, OBELISK, 5, "");
        _mint(msg.sender, SLIFER, 5, "");
        _mint(msg.sender, DRAGON_RA, 5, "");
    }


}
