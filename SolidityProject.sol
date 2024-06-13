// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // public variables here
    string public Token_Name = "ABC";
    string public Token_Abbrv = "AB";
    uint public Total_Supply = 0;
    // mapping variable here
    mapping(address => uint) public Balance;
    // mint function
    function Mint(address _address,uint _number) public {
    Total_Supply+= _number;
    Balance[_address]+= _number;
    }
    // burn function
    function Burn(address _address,uint _number) public {
    if(Balance[_address] >= _number){
    Total_Supply-= _number;
    Balance[_address]-= _number;
    }
    }
}
This Solidity contract defines a simple token named "MyToken" with basic minting and burning functionality.
In this code i have made these parts:
Public Variables:

Token_Name: Stores the name of the token, "ABC".
Token_Abbrv: Stores the abbreviation of the token, "AB".
Total_Supply: Stores the total supply of the token, initialized to 0.
Mapping:

Balance: Maps addresses to their respective token balances.
Mint Function:

Mint(address _address, uint _number): Increases the Total_Supply by _number and adds the same amount to the balance of _address.
Burn Function:

Burn(address _address, uint _number): If _address has a balance greater than or equal to _number, it decreases the Total_Supply and the balance of _address by _number.
This contract allows the creation (minting) and destruction (burning) of tokens while keeping track of the total supply and individual balances.
