## 使用步驟
使用 goerli 測試網
1. 領測試ETH 
https://faucets.chain.link/goerli

2. 領測試 ERC-20 token
連接錢包
https://goerli.etherscan.io/address/0xe69abe2b0c222d0176e965dcf2cbe01a78b44003#writeContract
使用 writeContract 用 faucets 函式 
to (address) 填入錢包地址
amount (uint256) 填入要領的ERC20代幣數量

3. 先在 ERC-20 合約裡 approve 給 My_Escrow.sol 合約
使用 writeContract 用 approve 函式 
填合約地址 跟 要領的數量 10^18=1顆
spender (address) = 0xc6A3E20d2027a103F8B9e7460b9167b8FdB9651e
amont  (uint256) = 1000000000000000000

4. 操作 Escrow 合約
https://goerli.etherscan.io/address/0xc6a3e20d2027a103f8b9e7460b9167b8fdb9651e#writeContract
合約功能
Read Contract
- 1. _get_largest_payee: 顯示存款最多的 user
- 2. depositsOf: user 存款額度
- 3. owner:  合約擁有者
- 4. payees: 存戶地址列表

Write Contract
- 1. deposit: 填入存戶地址跟金額。可以幫別人存款
- 2. reward_largest_payee: 合約擁有者從 Escrow 發 token 給存款最多錢的 user。 要先 send token 到合約地址才不會發完錢不能領款。
- 3. withdraw: 一鍵提款。 只能提領自己帳戶內全部的錢走。


5. 測試紀錄 event logs
https://goerli.etherscan.io/address/0xc6a3e20d2027a103f8b9e7460b9167b8fdb9651e#events
- 1. 幫自己存款 0.1 MTK
- 2. 幫別人存款 0.2 MTK
- 3. 提款 0.1 MTK 走
- 4. 發獎勵給存款最多的 user 0.1 MTK

