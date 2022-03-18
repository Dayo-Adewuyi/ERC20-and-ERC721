//SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";



/// @custom:security-contact dayoadewuyi@protonmail.com
contract Blocktoken is ERC20, Ownable {
    constructor() ERC20("Blocktoken", "BTK") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    uint256 price = 1000;

    function buytoken(address receiver, uint256 amount) public payable {
        _mint(receiver, (amount * price));
    }
}
