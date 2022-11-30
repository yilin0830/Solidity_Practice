// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/*
  建立一個 Bank 銀行
  在 web3 世界人人都可以當銀行家！我們想開張一間去中心化金融中心，簡易小而美的銀行

  使用者可以將我們發行的 Staking Token (ERC20代幣)存入銀行
  使用者執行定存，會開始計算 Reward 利息回饋
  使用者解除定存（withdraw），獲得 Reward 利息回饋

  Deposit 定存：實作 deposit function，可以將 Staking Token 存入 Bank 合約
  Withdraw 解除定存並提款，實作 withdraw function
  TimeLock 固定鎖倉期
*/
contract BasicBank {
    // 質押 Staking Token 代幣
    IERC20 public stakingToken;
    // 全部質押數量
    uint256 public totalStakedToken;
    // 個人質押數量
    mapping(address => uint256) public balanceOf;
    
    // 鎖倉時間
    uint256 public withdrawDeadline = 10 seconds;

    // 利息獎勵
    // 10 ** -18 per second
    uint256 public rewardRate = 1;
    // 個人總利息
    mapping(address => uint256) public rewardOf;

    // 定存資料
    struct Deposit {
        uint256 amount; // 定存多少金額
        uint256 startTime; // 定存開始時間
        uint256 endTime; // 定存結束時間
    }

    mapping(address => Deposit[]) public depositOf;

    constructor(IERC20 _stakingToken) {
        stakingToken = _stakingToken;
    }

    // update total token amount in the contract
    function updateTotalStakenToken() internal {
        totalStakedToken = stakingToken.balanceOf(address(this));
    }
    // 存款
    function deposit(uint256 _amount) external  {
        // 1) 將 stakingToken 移轉到 BasicBank 合約
        stakingToken.transferFrom(msg.sender, address(this), _amount);

        // 2) 紀錄存款數量
        totalStakedToken += _amount;
        balanceOf[msg.sender] += _amount;

        // 3) 定存資訊
        depositOf[msg.sender].push(
            Deposit({
                amount: _amount,
                startTime: block.timestamp,
                endTime: block.timestamp + withdrawDeadline
            })
        );
    }

    // 解除定存
    function withdraw(uint256 _depositId) external {
        // 檢查：餘額需要大於 0
        require(balanceOf[msg.sender] > 0, "You have no balance to withdraw");

        Deposit[] storage deposits = depositOf[msg.sender];
        // 檢查條件: 必須超過鎖倉期才可以提領
        require(block.timestamp >= deposits[_depositId].endTime, "Withdrawal Period is not reached yet");
        // 檢查條件：定存ID 是否存在
        require(_depositId <= deposits.length, "Deposit ID not exist!!");

        // 這次提領的金額 =本金 + 利息
        uint256 currentReward = deposits[_depositId].amount + getInterest(_depositId);
        updateTotalStakenToken();
        // 檢查條件：目前質押在合約中的代幣數量，要大於這次提領的金額（本金+利息）
        require(totalStakedToken >= currentReward, "Tokens in the pool is insufficient for the withdrawal");

        // 1) 獲得利息獎勵
        rewardOf[msg.sender] += currentReward;

        // 2) 提款
        stakingToken.transfer(msg.sender, currentReward);
        totalStakedToken -= currentReward;
        balanceOf[msg.sender] -= deposits[_depositId].amount;

        // 3) 把此筆定存移除，並更新最後一筆定存的 ID 至目前定存
        deposits[_depositId] = deposits[deposits.length - 1];
        deposits.pop();
    }

    // 計算利息
    function getInterest(uint256 _depositId) public view returns (uint256) {
        uint256 start = depositOf[msg.sender][_depositId].startTime;
        uint256 _amount = depositOf[msg.sender][_depositId].amount;
        return (block.timestamp - start) * rewardRate * _amount;
    }

    // 使用者旗下的所有定存利息
    function getAllInterest() public view returns (uint256){
        uint256 N = depositOf[msg.sender].length;
        uint256 allRewards;

        for (uint256 i = 0; i < N; i++) {
            allRewards += getInterest(i);
        }
        return allRewards;
    }
}