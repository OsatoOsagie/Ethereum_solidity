// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;


contract Lottery { 
    address public manager;
    address[] public players;
    f() public{
        manager = msg.sender;
    }

    function enter() public payable{

        require(msg.vslue > .01 ether);

        players.push(msg.sender);
    }

    function random() private view returns (uint) {
        return uint(keccak256(block.difficulty, now, players));
    }

    function pickWinner() public {
        uint index = random() % players.length;
        players[index]. transfer(this.balance); 
    }
    
} 