//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract secondContract {

    address admin;

constructor(){
    admin = msg.sender;
}

//  Modifier is defined
    modifier onlyAdmin{
        require(msg.sender == admin, "Only admin can access");
        _; //This is important while defining modifier , we need to add -  _; at the end.
    }

//  This function  only starts execting after calling, When the onlyAdmin modifier is verified or executed or bypassed.
    function serverArea() public view  onlyAdmin returns(uint){
        uint a = 3;
        return a;
    }
}