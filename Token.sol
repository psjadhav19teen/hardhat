// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Token
{
    string public symbol="MHT";
    string public name="My Hardhat Token";
    uint256 total=2100000;
    address public owner;
    mapping (address=>uint256) public balance;
    constructor()
    {
        owner=msg.sender;
        balance[owner]=total;
        
    }

    event transfer(address  _from,address _to, uint256 _amount);
    function transferof(address _to, uint256 _amount)external 
    {
        balance[msg.sender]-=_amount;
        balance[_to]+=_amount;
        emit transfer(msg.sender,_to,_amount);
    }

    function balanceof(address _to)external view returns (uint256)
    {
       return balance[_to];
    }

}