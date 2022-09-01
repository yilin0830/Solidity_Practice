string[7] memory tx = [
        "zkpenguin",
        "zkpancake",
        "zkpolice",
        "zkpig",
        "zkplayground",
        "zkpigeon",
        "zkpoison"
    ];

"zkpenguin":2098ddd01d6035049de112333af26442bb3009ea06b6df66fccfadf8adee9914
"zkpancake":4648dfc788d015b20cb30bd312820680fe7f126a5211202b924ea67fe8cc3cfe
"zkpolice":b592fdc51ce49d7670e27b3a500873a78d0f29b39d1f368cf73e7b38a6c206d7
"zkpig":b3c8b2632ac575ad8f94d4adc98aeeba6f87ca0b01c85f2faac2271cf67787ca
"zkplayground":760785a457f46af4582b62962c4d96be98c68df9619556fa20af3c286343bf81
"zkpigeon":395655712d1d58a4a7e3f01fd78482cba8477f8cfbf7a08202477c1baa15a335
"zkpoison":777726d7bfa53f1c91ec1485ed098db792c3e326b98ece6bd9761a43315b7cf3

└─ Root: e2de7e936cd2e3b398a5b5b89726a8d72148b93050d271cf91ffec3cc5598577
   ├── hash(...)
   │   ├── hash(hash(zkplayground) <-> hash(zkpenguin))
   │   │    ├─ hash(zkplayground)
   │   │    └─ hash(zkpenguin)
   │   └── hash(hash(zkpancake) <-> hash(zkpolice))
   │        ├─ hash(zkpancake)
   │        └─ hash(zkpolice)
   └── hash(...)
       ├── hash(hash(zkpig) <-> hash(zkpigeon))
       │    ├─ hash(zkpig)
       │    └─ hash(zkpigeon)
       └── hash(zkpoison)
            └─ hash(zkpoison)

└─ Root: e2de7e936cd2e3b398a5b5b89726a8d72148b93050d271cf91ffec3cc5598577
   ├── hash(...):0x3f5cc8bf1c679658923d8eae1666bd4297cffbd512a26ae69efea41449f68f42
   │   ├── hash(hash(zkplayground) <-> hash(zkpenguin)):0xf2f7796066d81cb9f6f66bbf30535fca504bed1287112bb1c2270e702dddc1c2
   │   │    ├─ hash(zkplayground):760785a457f46af4582b62962c4d96be98c68df9619556fa20af3c286343bf81
   │   │    └─ hash(zkpenguin):2098ddd01d6035049de112333af26442bb3009ea06b6df66fccfadf8adee9914
   │   └── hash(hash(zkpancake) <-> hash(zkpolice)):0xb4435d3d2bb4863bffe2dd7c4a217641efe9da99b177cef8693fe26910a2bf04
   │        ├─ hash(zkpancake):4648dfc788d015b20cb30bd312820680fe7f126a5211202b924ea67fe8cc3cfe
   │        └─ hash(zkpolice):b592fdc51ce49d7670e27b3a500873a78d0f29b39d1f368cf73e7b38a6c206d7
   └── hash(...):   0x7c8d8e6486e95d2eaff942ec8eb9b732d53596cb06548b62ff4841438a25a5d4
       ├── hash(hash(zkpig) <-> hash(zkpigeon)):0xa56943721ed106b947a7dd58f5a4cfdb9867b2902aca46244bc6f328a51f5266
       │    ├─ hash(zkpig):b3c8b2632ac575ad8f94d4adc98aeeba6f87ca0b01c85f2faac2271cf67787ca
       │    └─ hash(zkpigeon):395655712d1d58a4a7e3f01fd78482cba8477f8cfbf7a08202477c1baa15a335
       └── hash(zkpoison):777726d7bfa53f1c91ec1485ed098db792c3e326b98ece6bd9761a43315b7cf3
            └─ hash(zkpoison):777726d7bfa53f1c91ec1485ed098db792c3e326b98ece6bd9761a43315b7cf3


Proof "zkplayground":
hash(zkpenguin):0x2098ddd01d6035049de112333af26442bb3009ea06b6df66fccfadf8adee9914
hash(hash(zkpancake) <-> hash(zkpolice)):0xb4435d3d2bb4863bffe2dd7c4a217641efe9da99b177cef8693fe26910a2bf04
hash(hash(hash(zkpig) <-> hash(zkpigeon))<->hash(zkpoison)):0x7c8d8e6486e95d2eaff942ec8eb9b732d53596cb06548b62ff4841438a25a5d4

proof=
[0x2098ddd01d6035049de112333af26442bb3009ea06b6df66fccfadf8adee9914,0xb4435d3d2bb4863bffe2dd7c4a217641efe9da99b177cef8693fe26910a2bf04,0x7c8d8e6486e95d2eaff942ec8eb9b732d53596cb06548b62ff4841438a25a5d4]

input = 
0x81f07654000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000032098ddd01d6035049de112333af26442bb3009ea06b6df66fccfadf8adee9914b4435d3d2bb4863bffe2dd7c4a217641efe9da99b177cef8693fe26910a2bf047c8d8e6486e95d2eaff942ec8eb9b732d53596cb06548b62ff4841438a25a5d4

bytes4(keccak256("merkleProof(bytes32[] memory)"))=81f07654
