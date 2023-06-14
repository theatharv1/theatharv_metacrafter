//spdx-license-identifer:MIT
pragma solidity ^0.6.0;
contract Token {

    //public variable here
    string public name = "dcredit";
    string public symbol = "dck";
    uint256 public totalSupply = 0;//total token on blockchain

    //mapping variable here
    mapping(address => uint256) public balances;//for user account


    //event 
    event Transfer(address indexed from, address indexed to, uint256 value);

    // mint function
    function mint(address to, uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        totalSupply += amount;
        balances[to] += amount;
        emit Transfer(address(0), to, amount);
    }

    // burn function
    function burn(address from, uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        require(balances[from] >= amount, "Not enough balance");
        totalSupply -= amount;
        balances[from] -= amount;
        emit Transfer(from, address(0), amount);
    }
}