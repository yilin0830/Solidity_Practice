/*
Final Gates
學習辨別 msg.sender 和 tx.origin、得知 gasleft 的值、計算 xor

msg.sender 是直接呼叫合約的對象，即有可能為錢包地址或合約地址；tx.origin 則是最原始的錢包地址。
關於 gas fee，我們可以透過觀察 Remix 來得知或者直接爆破 22 次來滿足條件。
挑戰 5 提示
https://gist.github.com/AlbertLin0327/96411634362bf1d5f5aa64897d9a808a
*/

pragma solidity ^0.8.10;

contract Vuln5 {
    mapping(address => bool) public crackerList;

    modifier winCondition() {
        require(crackerList[tx.origin] == true);
        _;
    }

    modifier contractGate() {
        require(msg.sender != tx.origin);
        _;
    }

    modifier gasGate() {
        require((gasleft() % 22) == 0);
        _;
    }

    modifier keyGate(bytes8 _gateKey) {
        unchecked {
            require(
                uint64(uint160(msg.sender)) ^ uint64(_gateKey) == uint64(0) - 1
            );
        }
        _;
    }

    function crack(bytes8 _gateKey)
        public
        contractGate
        gasGate
        keyGate(_gateKey)
    {
        crackerList[tx.origin] = true;
    }
}
