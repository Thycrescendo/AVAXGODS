// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract BattleGame {
    mapping(address => uint256) public balances;

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function battle(address opponent) external {
        // Logic for battling between players
        // Example: deduct funds, determine winner, etc.
    }
}
