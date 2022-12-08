import { ethers } from 'ethers'

const provider = new ethers.providers.JsonRpcProvider('使用 foundry anvil 啟動測試鏈')

const abi = ['event MyPushLog(uint256 indexed)']
const iface = new ethers.utils.Interface(abi)

const LogHash = ethers.utils.id('MyPushLog(uint256)')

const filter = {
  address: '替換為部署合約網址',
  topics: [LogHash],
}

provider.on(filter, async (result) => {
  console.log('Log in:', result, '\r\n')
  let events = iface.parseLog(result)
  console.log('indexed:', events.args[0])
})