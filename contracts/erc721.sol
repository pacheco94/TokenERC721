//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

/**
*@title NFT ERC721
*@author GEORGE PACHECO
*@dev ERC721 TOKEN CREATION USING OPENZEPPELIN LIBRARY
 */

contract erc721 is ERC721 {

    //counters for NFT IDs
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    //smart contract constructor
    constructor (string memory _name, string memory _symbol) ERC721(_name,_symbol){}

    //sending NFTs
    function sendNFTs(address _account) public {
        _tokenIds.increment(); 
        uint256 newItemId = _tokenIds.current(); //funtion of Counter smart contract
        _safeMint(_account, newItemId);
    }
}