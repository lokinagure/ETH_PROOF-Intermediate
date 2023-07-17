// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
    For this challenge, 
    write a smart contract that uses view, pure, and payable functions. 
    Ensure that the functions are accessible
    within the contract and derived contracts as well.
*/

contract FunctionChallenge{

    //  accessible with-in contract means we need to make functions as
    //  - internal.

    string website = "https://remix.ethereum.org/";
    address owner = msg.sender;
    uint amount = 50;


    function viewSample() internal  view returns (string memory) {
        return website;
    }

    function pureSample(uint values) internal  pure returns (uint) {
        uint square = values * values;
        return square;
    }

// This payble function can't be able to set visiblity type as internal
//  TypeError: "internal" and "private" functions cannot be payable.

    function payableSample(uint _amount) external   payable onlyOwner returns (uint){
             amount =  amount + _amount;
            return  amount;
    }

            modifier onlyOwner(){
             require(owner == msg.sender, "Only onwer can use paybleSample");
                     _;
            }

}

