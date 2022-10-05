// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Whitelist {

    uint8 public maxWhiteListedAddress;

    mapping(address => bool) public whiteListedAddresses;

    uint8 public numAddressesWhiteListed;

    constructor(uint8 _maxWhiteListedAddress) {
        maxWhiteListedAddress = _maxWhiteListedAddress;
    }

    function addAddressToWhiteList () public {
        require(!whiteListedAddresses[msg.sender],"Sender has already been whitelisted.");
        require(numAddressesWhiteListed < maxWhiteListedAddress,"White list limit reached");
    
        whiteListedAddresses[msg.sender] = true;

        numAddressesWhiteListed +=1;
    }
}