// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {PriceConverter} from "../PriceConverter"

    contract fundme {
        
        uint256 public  minUsd = 5e18;
        address[] public funders;
        mapping (address funders => uint256 amountFundedBy) public amountFundedBy;

        function fund() public payable  {
        require(getConversionRate(msg.value) >= minUsd , "not even eth");
        funders.push(msg.sender);
        amountFundedBy[msg.sender] += msg.value ;
        }
    }