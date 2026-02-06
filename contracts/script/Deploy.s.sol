// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {TripExperience} from "../src/TripExperience.sol";

/**
 * @title Deploy
 * @notice Deployment script for TripExperience NFT contract
 * @dev Run with: forge script script/Deploy.s.sol --rpc-url monad_testnet --broadcast --account claude-monad
 */
contract Deploy is Script {
    function run() external {
        console.log("Deploying TripExperience...");
        
        vm.startBroadcast();
        
        // msg.sender during broadcast is the deployer
        TripExperience trip = new TripExperience(msg.sender);
        
        vm.stopBroadcast();
        
        console.log("TripExperience deployed at:", address(trip));
        console.log("Owner:", trip.owner());
    }
}
