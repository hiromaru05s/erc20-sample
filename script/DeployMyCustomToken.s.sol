// SPDX-License-Identifier : MIT
pragma solidity ^0.8.18;

import {Script} from "lib/forge-std/src/Script.sol";
import {MyCustomToken} from "../src/MyCustomToken.sol";

contract DeployOurToken is Script {

    uint256 public constant INITIAL_SUPPLY = 1000000;

    function run() external {
        vm.startBroadcast();
        new MyCustomToken(INITIAL_SUPPLY);
        vm.stopBroadcast();
    }
}