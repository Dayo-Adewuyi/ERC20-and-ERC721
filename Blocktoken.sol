//SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";



/// @custom:security-contact dayoadewuyi@protonmail.com
contract Blocktoken is ERC20, Ownable {
    constructor() ERC20("Blocktoken", "BTK") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
        
    }
     
   uint256 public tokensPerEth = 1000;

   
   
    function buytoken(address receiver) public payable {
        require(msg.value > 0, "our tokens are 1000/eth boss");
        uint amount = msg.value * tokensPerEth;
        _mint(receiver, amount );
    }
}
