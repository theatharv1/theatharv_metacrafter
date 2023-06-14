// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Variables {
    uint public num;
    bool public isConnected;
    address public userWallet;
    string public userName;

    function setNumber(uint _number) public {
        num = _number;
    }

    function setBool(bool _connection) public {
        isConnected = _connection;
    }

    function setName(string memory _name) public {
        userName = _name;
    }

    function setAddress(address _address) public {
        userWallet = _address;
    }

    function getNumber() public view returns (uint) {
        return num;
    }

    function getName() public view returns (string memory) {
        return userName;
    }

    function getWalletAddress() public view returns (address) {
        return userWallet;
    }

    function getConnectionStatus() public view returns (bool) {
        return isConnected;
    }
}
