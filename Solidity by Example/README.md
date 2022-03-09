# Soldidity by Example version 0.8.10
https://solidity-by-example.org/

## Hello World
[HelloWorld.sol](https://github.com/yilin0830/Solidity_Practice/blob/35a78f927e2651a093cce1f4ad2a1860c162527a/Solidity%20by%20Example/Constants.sol#L9)
 
pragma specifies the compiler version of Solidity.

## First Application

Here is a simple contract that you can get, increment and decrement the count store in this contract.

## Primitive Data Types
Here we introduce you to some primitive data types available in Solidity.

* boolean
* uint
* int
* address

## Variables
There are 3 types of variables in Solidity

* local
    * declared inside a function
    * Znot stored on the blockchain
* state
    * declared outside a function
    * stored on the blockchain
* global (provides information about the blockchain)

##　Constants
Constants are variables that cannot be modified.

Their value is hard coded and using constants can save gas cost.

## Immutable
Immutable variables are like constants. Values of immutable variables can be set inside the constructor but cannot be modified afterwards.

## Reading and Writing to a State Variable
To write or update a state variable you need to send a transaction.

On the other hand, you can read state variables, for free, without any transaction fee.