# ethers.js
https://docs.ethers.io/v5/

- Provider
- signer
- contract

## Connection
- Connecting to Ethereum
    - MetaMask 
    - RPC
-

-

## Signing Messages
https://docs.ethers.io/v5/api/signer/
- Address 合約地址
- 簽屬訊息 signature = await signer.signMessage("Hello World");

``` javascript=
console.log(signature)
```

### EIP712
signer._signTypedData( domain , types , value ) ⇒ Promise< string< RawSignature > >


## Contracts
https://docs.ethers.io/v5/api/contract/
- Address
- ABI
- Read Methods
- State Changing Methods


ethers.Contract(Address, ABI, Provider)


## Event
https://docs.ethers.io/v5/getting-started/#getting-started--events

- Address 合約地址
- on 監聽指定特定事件(event)

Contract.on(EventName,)