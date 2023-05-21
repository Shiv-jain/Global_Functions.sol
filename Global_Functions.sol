// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract global_functions{
    address payable public admin = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    mapping(address => uint) public balances;
    uint public msg_value;
    address public msg_sender;

    function deposit(address _address,uint _value) public payable{
        balances[_address] += _value;
        msg_value += msg.value;
    }

    function withdraw(address _address,uint _value) public payable {
        balances[_address] -= _value;
        msg_sender = msg.sender;
    }
}