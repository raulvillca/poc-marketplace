// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract ObeliskNFT is ERC721 {
    uint public supply;
    uint internal imageURI;

    constructor() ERC721("Obelisk the tormentor - Egyptian God ", "OEG") {}

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721 Metadata: not exists token");

        return "https://raw.githubusercontent.com/raulvillca/poc-marketplace/main/images/0000000000000000000000000000000000000000000000000000000000000003.json";
    }

    function mintNft() public {
        supply += 1;
        _mint(msg.sender, supply);
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721Enumerable) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId) internal override(ERC721, ERC721Enumerable) {
        super._beforeTokenTransfer(from, to, tokenId);
    }
}
