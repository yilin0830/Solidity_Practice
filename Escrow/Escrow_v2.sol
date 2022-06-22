// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.14;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract My_Escrow {
    
    address public owner;
    address[] public payees;

    address _tokenContract = 0xE69aBe2B0C222d0176E965DcF2Cbe01a78b44003; //Goerli ERC20
    IERC20 token = IERC20(_tokenContract);
    constructor() {
        owner = msg.sender;
    }
    event Deposited(address indexed depositor, address indexed payee, uint256 weiAmount);
    event Withdrawn(address indexed payee, uint256 weiAmount);
    event Rewarded(address indexed payee, uint256 weiAmount);

    mapping(address => uint256) private _deposits;

    function depositsOf(address payee) public view returns (uint256) {
        return _deposits[payee];
    }

  
    function deposit(address payee, uint256 amount) public  {
        require(amount>0);
        require(token.balanceOf(msg.sender) >= amount, "You need to have tokens more than amount first!");
        require(token.allowance(msg.sender,address(this)) >= amount, "You need to approve tokens more than amount first!");
        token.transferFrom(msg.sender, address(this), amount); 

        if(_deposits[payee]==0) {
            payees.push(payee);
        }
        _deposits[payee] += amount;
        
        emit Deposited(msg.sender, payee, amount);
    }

    function withdraw() public  {
        address payee = msg.sender;
        uint256 payment = _deposits[payee];

        _deposits[payee] = 0;
         
        token.transfer(payee, payment);

        emit Withdrawn(payee, payment);
    }

    function _get_largest_payee() public view returns(address){
        address largest_payee;
        uint256 largest_payment = 0;
        uint256 length = payees.length;
        if(length == 0 ) {
            return address(0x0);
        }
        for(uint256 i=0; i < length;) {
            address payee = payees[i];
            uint256 payment = _deposits[payee];
            unchecked { ++i; }
            if(payment > largest_payment) { 
                largest_payee = payee;
                largest_payment =  payment;
            }
        }
        return largest_payee;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _; 
    }

    function reward_largest_payee(uint256 amount) public onlyOwner (){
        address payee = _get_largest_payee();
        require(token.balanceOf(address(this)) >=amount , "You need to send more tokens to the contract first!");
        token.transfer(payee, amount);
        emit Rewarded(payee, amount);
    }
}
