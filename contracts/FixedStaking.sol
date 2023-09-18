// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract FixedStacking is ERC20 {
mapping(address=>uint256)public staked;
mapping(address=>uint256)private stakedFromTS;

    constructor() ERC20("Fixed stacking token", "Fix") {
        _mint(msg.sender, 10000000000000000000);
    }

    function stake(uint256 amount) external {
        require(amount > 0 , " amount is <=0");
        require(balanceOf(msg.sender)>=amount ,"balance is less than amount");
        _transfer(msg.sender, address(this), amount);
        if(staked[msg.sender] > 0){
            claim();
        }
        stakedFromTS[msg.sender]=block.timestamp;
        staked[msg.sender]+=amount;
    }

    function unStake(uint256 amount) external {
        require(amount > 0 , "amount is less than equal zero");
        require(staked[msg.sender]>=amount, "amount is greater than staked");
        claim();
        staked[msg.sender]-=amount;
        _transfer(address(this),msg.sender,amount);
    }

    function claim()public {
        require(staked[msg.sender]>0 , "staked is <= 0");
        uint256 secondsStaked= block.timestamp=stakedFromTS[msg.sender];
        uint256 rewards=staked[msg.sender]*secondsStaked/3.15e7;
        _mint(msg.sender,rewards);
        stakedFromTS[msg.sender]=block.timestamp;
    }
}