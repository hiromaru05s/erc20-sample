// SPDX-License-Identifier : MIT
pragma solidity ^0.8.18;

import {ERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract MyCustomToken is ERC20 {
    constructor(uint256 _initialSupply) ERC20("My Custom Token", "MCT") {
        _mint(msg.sender, _initialSupply);
    }
}